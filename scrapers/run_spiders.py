#!/usr/bin/env python3
"""
Script to run all financial data spiders
"""

import os
import sys
import subprocess
import json
from datetime import datetime

# Add the scrapers directory to Python path
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def run_spider(spider_name, output_file=None):
    """Run a specific spider and return the output file path."""
    print(f"\n{'='*50}")
    print(f"Running {spider_name} spider...")
    print(f"{'='*50}")
    
    try:
        # Set PYTHONPATH to include the scrapers directory
        env = os.environ.copy()
        env['PYTHONPATH'] = os.path.dirname(os.path.abspath(__file__)) + ':' + env.get('PYTHONPATH', '')
        
        # Run the spider
        cmd = [
            sys.executable, '-m', 'scrapy', 'crawl', spider_name,
            '-s', 'LOG_LEVEL=INFO'
        ]
        
        result = subprocess.run(cmd, cwd=os.path.dirname(__file__), env=env, capture_output=True, text=True)
        
        if result.returncode == 0:
            print(f"✅ {spider_name} completed successfully")
            print(f"Output: {result.stdout}")
            
            # Check if output file was created
            if output_file and os.path.exists(output_file):
                with open(output_file, 'r') as f:
                    data = json.load(f)
                print(f"📊 Collected {len(data)} items")
            return True
        else:
            print(f"❌ {spider_name} failed")
            print(f"Error: {result.stderr}")
            return False
            
    except Exception as e:
        print(f"❌ Error running {spider_name}: {e}")
        return False

def combine_data():
    """Combine all scraped data into a single file."""
    print(f"\n{'='*50}")
    print("Combining all scraped data...")
    print(f"{'='*50}")
    
    combined_data = {
        'ipos': [],
        'earnings': [],
        'movers': [],
        'catalysts': [],
        'news': [],
        'scraped_at': datetime.now().isoformat()
    }
    
    # Files to combine
    files_to_check = [
        ('yahoo_finance_output.json', 'news'),
        ('marketwatch_output.json', 'news'),
        ('scraped_data.json', 'news'),  # General scraped data
    ]
    
    for filename, category in files_to_check:
        filepath = os.path.join(os.path.dirname(__file__), filename)
        if os.path.exists(filepath):
            try:
                with open(filepath, 'r') as f:
                    data = json.load(f)
                
                if isinstance(data, list):
                    combined_data[category].extend(data)
                elif isinstance(data, dict) and 'data' in data:
                    combined_data[category].extend(data['data'])
                
                print(f"✅ Added {len(data) if isinstance(data, list) else len(data.get('data', []))} items from {filename}")
                
            except Exception as e:
                print(f"❌ Error reading {filename}: {e}")
    
    # Save combined data
    combined_file = os.path.join(os.path.dirname(__file__), 'combined_scraped_data.json')
    with open(combined_file, 'w') as f:
        json.dump(combined_data, f, indent=2)
    
    print(f"\n📊 Combined data summary:")
    for category, items in combined_data.items():
        if category != 'scraped_at':
            print(f"  {category}: {len(items)} items")
    
    print(f"\n💾 Combined data saved to: {combined_file}")
    return combined_file

def main():
    """Main function to run all spiders."""
    print("🚀 Starting financial data scraping...")
    print(f"📅 Started at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    
    # List of spiders to run with their expected output files
    spiders = [
        ('yahoo_finance', 'yahoo_finance_output.json'),
        ('marketwatch', 'marketwatch_output.json'),
    ]
    
    successful_spiders = []
    
    # Run each spider
    for spider_name, output_file in spiders:
        if run_spider(spider_name, output_file):
            successful_spiders.append(spider_name)
    
    # Combine all data
    if successful_spiders:
        combined_file = combine_data()
        print(f"\n🎉 Scraping completed successfully!")
        print(f"✅ Successful spiders: {', '.join(successful_spiders)}")
        print(f"📁 Combined data: {combined_file}")
    else:
        print(f"\n❌ No spiders completed successfully")
    
    print(f"\n📅 Finished at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")

if __name__ == "__main__":
    main() 