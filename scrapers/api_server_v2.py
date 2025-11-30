"""
Enhanced API Server for StockSurveyor Dashboard 2.0
"""

from fastapi import FastAPI, HTTPException, BackgroundTasks
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from typing import List, Optional, Dict, Any
import asyncio
import json
from datetime import datetime
import logging

# Import new swarm architecture
from swarms import (
    FinancialDataSwarm,
    NewsIntelligenceSwarm,
    SocialSentimentSwarm,
    TechnicalAnalysisSwarm,
    RiskAssessmentSwarm
)

# Setup logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Initialize swarms
financial_swarm = FinancialDataSwarm()
news_swarm = NewsIntelligenceSwarm()
social_swarm = SocialSentimentSwarm()
technical_swarm = TechnicalAnalysisSwarm()
risk_swarm = RiskAssessmentSwarm()

# Create FastAPI app
app = FastAPI(
    title="StockSurveyor Dashboard 2.0 API",
    description="Enhanced API for comprehensive financial analysis",
    version="2.0.0"
)

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Pydantic models
class FinancialDataRequest(BaseModel):
    ticker: str
    include_technical: bool = True
    include_risk: bool = True

class NewsRequest(BaseModel):
    ticker: str
    timeframe: str = "24h"
    include_sentiment: bool = True

class SocialRequest(BaseModel):
    ticker: str
    platforms: List[str] = ["reddit", "twitter", "stocktwits"]

class AnalysisRequest(BaseModel):
    ticker: str
    analysis_types: List[str] = ["financial", "technical", "news", "social", "risk"]

# Health check endpoint
@app.get("/health")
async def health_check():
    """Health check endpoint"""
    return {
        "status": "healthy",
        "version": "2.0.0",
        "timestamp": datetime.now().isoformat(),
        "swarms": {
            "financial": financial_swarm.get_best_spiders(),
            "news": news_swarm.get_best_spiders(),
            "social": social_swarm.get_best_spiders(),
            "technical": technical_swarm.get_best_spiders(),
            "risk": risk_swarm.get_best_spiders(),
        }
    }

# Financial data endpoint
@app.get("/api/v2/financial/{ticker}")
async def get_financial_data(ticker: str):
    """Get comprehensive financial data for a ticker"""
    try:
        logger.info(f"Collecting financial data for {ticker}")
        data = await financial_swarm.collect_data(ticker)
        return {
            "success": True,
            "data": data,
            "timestamp": datetime.now().isoformat()
        }
    except Exception as e:
        logger.error(f"Error collecting financial data for {ticker}: {e}")
        raise HTTPException(status_code=500, detail=str(e))

# News intelligence endpoint
@app.get("/api/v2/news/{ticker}")
async def get_news_intelligence(ticker: str, timeframe: str = "24h"):
    """Get news intelligence for a ticker"""
    try:
        logger.info(f"Collecting news intelligence for {ticker}")
        data = await news_swarm.collect_data(ticker, timeframe=timeframe)
        return {
            "success": True,
            "data": data,
            "timestamp": datetime.now().isoformat()
        }
    except Exception as e:
        logger.error(f"Error collecting news intelligence for {ticker}: {e}")
        raise HTTPException(status_code=500, detail=str(e))

# Social sentiment endpoint
@app.get("/api/v2/social/{ticker}")
async def get_social_sentiment(ticker: str):
    """Get social sentiment for a ticker"""
    try:
        logger.info(f"Collecting social sentiment for {ticker}")
        data = await social_swarm.collect_data(ticker)
        return {
            "success": True,
            "data": data,
            "timestamp": datetime.now().isoformat()
        }
    except Exception as e:
        logger.error(f"Error collecting social sentiment for {ticker}: {e}")
        raise HTTPException(status_code=500, detail=str(e))

# Technical analysis endpoint
@app.get("/api/v2/technical/{ticker}")
async def get_technical_analysis(ticker: str):
    """Get technical analysis for a ticker"""
    try:
        logger.info(f"Collecting technical analysis for {ticker}")
        data = await technical_swarm.collect_data(ticker)
        return {
            "success": True,
            "data": data,
            "timestamp": datetime.now().isoformat()
        }
    except Exception as e:
        logger.error(f"Error collecting technical analysis for {ticker}: {e}")
        raise HTTPException(status_code=500, detail=str(e))

# Risk assessment endpoint
@app.get("/api/v2/risk/{ticker}")
async def get_risk_assessment(ticker: str):
    """Get risk assessment for a ticker"""
    try:
        logger.info(f"Collecting risk assessment for {ticker}")
        data = await risk_swarm.collect_data(ticker)
        return {
            "success": True,
            "data": data,
            "timestamp": datetime.now().isoformat()
        }
    except Exception as e:
        logger.error(f"Error collecting risk assessment for {ticker}: {e}")
        raise HTTPException(status_code=500, detail=str(e))

# Comprehensive analysis endpoint
@app.post("/api/v2/analysis")
async def get_comprehensive_analysis(request: AnalysisRequest, background_tasks: BackgroundTasks):
    """Get comprehensive analysis for a ticker"""
    try:
        logger.info(f"Collecting comprehensive analysis for {request.ticker}")
        
        # Collect data from all requested analysis types
        analysis_data = {}
        
        if "financial" in request.analysis_types:
            analysis_data["financial"] = await financial_swarm.collect_data(request.ticker)
        
        if "technical" in request.analysis_types:
            analysis_data["technical"] = await technical_swarm.collect_data(request.ticker)
        
        if "news" in request.analysis_types:
            analysis_data["news"] = await news_swarm.collect_data(request.ticker)
        
        if "social" in request.analysis_types:
            analysis_data["social"] = await social_swarm.collect_data(request.ticker)
        
        if "risk" in request.analysis_types:
            analysis_data["risk"] = await risk_swarm.collect_data(request.ticker)
        
        return {
            "success": True,
            "ticker": request.ticker,
            "data": analysis_data,
            "timestamp": datetime.now().isoformat()
        }
    except Exception as e:
        logger.error(f"Error collecting comprehensive analysis for {request.ticker}: {e}")
        raise HTTPException(status_code=500, detail=str(e))

# Swarm health endpoint
@app.get("/api/v2/swarms/health")
async def get_swarm_health():
    """Get health status of all swarms"""
    try:
        return {
            "success": True,
            "swarms": {
                "financial": {
                    "health": financial_swarm.health_metrics,
                    "best_spiders": financial_swarm.get_best_spiders()
                },
                "news": {
                    "health": news_swarm.health_metrics,
                    "best_spiders": news_swarm.get_best_spiders()
                },
                "social": {
                    "health": social_swarm.health_metrics,
                    "best_spiders": social_swarm.get_best_spiders()
                },
                "technical": {
                    "health": technical_swarm.health_metrics,
                    "best_spiders": technical_swarm.get_best_spiders()
                },
                "risk": {
                    "health": risk_swarm.health_metrics,
                    "best_spiders": risk_swarm.get_best_spiders()
                }
            },
            "timestamp": datetime.now().isoformat()
        }
    except Exception as e:
        logger.error(f"Error getting swarm health: {e}")
        raise HTTPException(status_code=500, detail=str(e))

# Test endpoint for quick validation
@app.get("/api/v2/test/{ticker}")
async def test_swarm_integration(ticker: str):
    """Test endpoint to validate swarm integration"""
    try:
        logger.info(f"Testing swarm integration for {ticker}")
        
        # Test each swarm individually
        results = {}
        
        # Test financial swarm
        try:
            financial_data = await financial_swarm.collect_data(ticker)
            results["financial"] = {"status": "success", "data": financial_data}
        except Exception as e:
            results["financial"] = {"status": "error", "error": str(e)}
        
        # Test news swarm
        try:
            news_data = await news_swarm.collect_data(ticker)
            results["news"] = {"status": "success", "data": news_data}
        except Exception as e:
            results["news"] = {"status": "error", "error": str(e)}
        
        # Test social swarm
        try:
            social_data = await social_swarm.collect_data(ticker)
            results["social"] = {"status": "success", "data": social_data}
        except Exception as e:
            results["social"] = {"status": "error", "error": str(e)}
        
        # Test technical swarm
        try:
            technical_data = await technical_swarm.collect_data(ticker)
            results["technical"] = {"status": "success", "data": technical_data}
        except Exception as e:
            results["technical"] = {"status": "error", "error": str(e)}
        
        # Test risk swarm
        try:
            risk_data = await risk_swarm.collect_data(ticker)
            results["risk"] = {"status": "success", "data": risk_data}
        except Exception as e:
            results["risk"] = {"status": "error", "error": str(e)}
        
        return {
            "success": True,
            "ticker": ticker,
            "test_results": results,
            "timestamp": datetime.now().isoformat()
        }
    except Exception as e:
        logger.error(f"Error in test integration for {ticker}: {e}")
        raise HTTPException(status_code=500, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000) 