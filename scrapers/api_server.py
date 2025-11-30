from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from typing import List, Optional, Dict, Any
import sqlite3
import json
from datetime import datetime, timedelta
import redis
import asyncio
from contextlib import asynccontextmanager
import os

# Pydantic models for API responses


# Database connection
def get_db_connection():
    conn = sqlite3.connect('finance_data.db')
    conn.row_factory = sqlite3.Row
    return conn

# Redis connection
def get_redis_connection():
    return redis.Redis(host='localhost', port=6379, db=0)

# Startup and shutdown events
@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    print("Starting API server...")
    yield
    # Shutdown
    print("Shutting down API server...")

# Create FastAPI app
app = FastAPI(
    title="Financial Data API",
    description="API for serving scraped financial data",
    version="1.0.0",
    lifespan=lifespan
)

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # In production, specify your Flutter app's domain
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Data file paths
DATA_DIR = os.path.dirname(os.path.abspath(__file__))
DB_PATH = os.path.join(DATA_DIR, "finance_data.db")

def load_json_data(filename: str) -> List[Dict[str, Any]]:
    """Load data from JSON file."""
    filepath = os.path.join(DATA_DIR, filename)
    if os.path.exists(filepath):
        try:
            with open(filepath, 'r', encoding='utf-8') as f:
                data = json.load(f)
                return data if isinstance(data, list) else []
        except Exception as e:
            print(f"Error loading {filename}: {e}")
            return []
    return []

def load_combined_data() -> Dict[str, Any]:
    """Load combined scraped data."""
    combined_file = os.path.join(DATA_DIR, "combined_scraped_data.json")
    if os.path.exists(combined_file):
        try:
            with open(combined_file, 'r', encoding='utf-8') as f:
                return json.load(f)
        except Exception as e:
            print(f"Error loading combined data: {e}")
    return {
        'news': [],
        'scraped_at': datetime.now().isoformat()
    }

@app.get("/")
async def root():
    """Root endpoint with API information."""
    return {
        "message": "Financial Data API",
        "version": "1.0.0",
        "endpoints": {
            "news": "/api/news",
            "all_data": "/api/all",
            "health": "/health"
        }
    }

@app.get("/health")
async def health_check():
    """Health check endpoint."""
    return {"status": "healthy", "timestamp": datetime.now().isoformat()}

@app.get("/api/news")
async def get_news(limit: Optional[int] = 50, source: Optional[str] = None):
    """Get financial news from various sources."""
    try:
        # Try to load combined data first
        combined_data = load_combined_data()
        news_data = combined_data.get('news', [])
        
        # If no combined data, try individual files
        if not news_data:
            yahoo_news = load_json_data("yahoo_finance_output.json")
            marketwatch_news = load_json_data("marketwatch_output.json")
            general_news = load_json_data("scraped_data.json")
            
            news_data = yahoo_news + marketwatch_news + general_news
        
        # Filter by source if specified
        if source:
            news_data = [item for item in news_data if source.lower() in item.get('source', '').lower()]
        
        # Limit results
        if limit:
            news_data = news_data[:limit]
        
        return {
            "success": True,
            "count": len(news_data),
            "data": news_data
        }
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error fetching news: {str(e)}")



@app.get("/api/all")
async def get_all_data(limit: Optional[int] = 100):
    """Get all scraped data."""
    try:
        combined_data = load_combined_data()
        
        # Apply limit to each category
        if limit:
            for category in ['news']:
                if category in combined_data:
                    combined_data[category] = combined_data[category][:limit]
        
        return {
            "success": True,
            "scraped_at": combined_data.get('scraped_at'),
            "summary": {
                category: len(items) for category, items in combined_data.items() 
                if category != 'scraped_at'
            },
            "data": combined_data
        }
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error fetching all data: {str(e)}")

@app.get("/api/sources")
async def get_data_sources():
    """Get information about available data sources."""
    try:
        sources = {
            "news": {
                "yahoo_finance": os.path.exists(os.path.join(DATA_DIR, "yahoo_finance_output.json")),
                "marketwatch": os.path.exists(os.path.join(DATA_DIR, "marketwatch_output.json")),
                "combined": os.path.exists(os.path.join(DATA_DIR, "combined_scraped_data.json"))
            }
        }
        
        return {
            "success": True,
            "sources": sources,
            "data_directory": DATA_DIR
        }
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error fetching sources info: {str(e)}")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000) 