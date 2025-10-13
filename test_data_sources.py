#!/usr/bin/env python3
"""Test script for data sources module."""

import sys
import os
from datetime import datetime

# Add src to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "src"))

from data_sources import DataAdapter


def test_connection():
    """Test basic connectivity to data sources."""
    print("=" * 60)
    print("Testing Data Sources Connection")
    print("=" * 60)
    
    # Initialize adapter
    try:
        adapter = DataAdapter()
        print("✓ DataAdapter initialized successfully")
    except Exception as e:
        print(f"✗ Failed to initialize adapter: {str(e)}")
        return False
    
    # Check API keys
    print("\n API Keys Status:")
    for key, value in adapter.api_keys.items():
        status = "✓ Set" if value else "✗ Missing"
        print(f"  {key}: {status}")
    
    return True


def test_stock_price():
    """Test fetching stock price."""
    print("\n" + "=" * 60)
    print("Testing Stock Price Fetch (AAPL)")
    print("=" * 60)
    
    adapter = DataAdapter()
    
    try:
        price = adapter.get_stock_price("AAPL")
        if price:
            print(f"\n✓ Successfully fetched AAPL data:")
            print(f"  Price: ${price.price:.2f}")
            print(f"  Bid: ${price.bid:.2f} x {price.bid_size}")
            print(f"  Ask: ${price.ask:.2f} x {price.ask_size}")
            print(f"  Change: {price.daily_change_pct:+.2f}%")
            print(f"  Volume: {price.volume:,}")
            print(f"  Timestamp: {price.timestamp}")
            return True
        else:
            print("✗ Failed to fetch stock price (returned None)")
            print("  Check POLYGON_API_KEY in .env")
            return False
    
    except Exception as e:
        print(f"✗ Error fetching stock price: {str(e)}")
        print("  Make sure POLYGON_API_KEY is set correctly")
        return False


def test_options_chain():
    """Test fetching options chain."""
    print("\n" + "=" * 60)
    print("Testing Options Chain Fetch (AAPL)")
    print("=" * 60)
    
    adapter = DataAdapter()
    
    try:
        chain = adapter.get_options_chain("AAPL")
        if chain:
            print(f"\n✓ Successfully fetched AAPL options chain:")
            print(f"  Underlying: {chain.underlying_ticker} @ ${chain.underlying_price:.2f}")
            print(f"  Total contracts: {len(chain.contracts)}")
            
            # Count by type
            calls = chain.filter_calls()
            puts = chain.filter_puts()
            print(f"  Calls: {len(calls)}, Puts: {len(puts)}")
            
            # Show sample contract
            if calls:
                sample = calls[0]
                print(f"\n  Sample contract:")
                print(f"    {sample.ticker}")
                print(f"    Strike: ${sample.strike:.2f}, Expiry: {sample.expiry}")
                print(f"    Mid: ${sample.mid:.2f}, IV: {sample.iv*100:.1f}%")
                print(f"    Delta: {sample.delta:.3f}, Theta: {sample.theta:.3f}")
                print(f"    OI: {sample.open_interest:,}")
            
            return True
        else:
            print("✗ Failed to fetch options chain (returned None)")
            return False
    
    except Exception as e:
        print(f"✗ Error fetching options chain: {str(e)}")
        return False


def test_market_context():
    """Test fetching market context."""
    print("\n" + "=" * 60)
    print("Testing Market Context Fetch")
    print("=" * 60)
    
    adapter = DataAdapter()
    
    try:
        context = adapter.get_market_context()
        if context:
            print(f"\n✓ Successfully fetched market context:")
            print(f"  VIX: {context.vix:.2f} ({context.vix_change:+.2f})")
            print(f"  SPY: ${context.spy_price:.2f} ({context.spy_change_pct:+.2f}%)")
            print(f"  QQQ: ${context.qqq_price:.2f} ({context.qqq_change_pct:+.2f}%)")
            print(f"  Put/Call Ratio: {context.put_call_ratio:.2f}")
            print(f"  Timestamp: {context.timestamp}")
            return True
        else:
            print("✗ Failed to fetch market context (returned None)")
            return False
    
    except Exception as e:
        print(f"✗ Error fetching market context: {str(e)}")
        return False


def test_cache():
    """Test caching functionality."""
    print("\n" + "=" * 60)
    print("Testing Cache Functionality")
    print("=" * 60)
    
    adapter = DataAdapter()
    
    # First fetch (should hit API)
    print("\n1. First fetch (hits API)...")
    start = datetime.now()
    price1 = adapter.get_stock_price("AAPL")
    elapsed1 = (datetime.now() - start).total_seconds()
    print(f"   Time: {elapsed1:.3f}s")
    
    # Second fetch (should hit cache)
    print("\n2. Second fetch (hits cache)...")
    start = datetime.now()
    price2 = adapter.get_stock_price("AAPL")
    elapsed2 = (datetime.now() - start).total_seconds()
    print(f"   Time: {elapsed2:.3f}s")
    
    if elapsed2 < elapsed1 / 10:  # Cache should be 10x+ faster
        print(f"\n✓ Cache working! {elapsed1/elapsed2:.1f}x speedup")
        
        # Show cache stats
        stats = adapter.cache.get_stats()
        print(f"\n  Cache stats:")
        print(f"    Active entries: {stats['active_entries']}")
        print(f"    Expired entries: {stats['expired_entries']}")
        return True
    else:
        print(f"\n✗ Cache may not be working (similar times)")
        return False


def main():
    """Run all tests."""
    print("\n🚀 Data Sources Test Suite")
    print("=" * 60)
    
    # Load .env if available
    try:
        from dotenv import load_dotenv
        load_dotenv()
        print("✓ Loaded .env file")
    except ImportError:
        print("ℹ  python-dotenv not installed (optional)")
        print("  Install: pip install python-dotenv")
    
    # Run tests
    tests = [
        ("Connection Test", test_connection),
        ("Stock Price", test_stock_price),
        ("Options Chain", test_options_chain),
        ("Market Context", test_market_context),
        ("Cache", test_cache),
    ]
    
    results = {}
    for name, test_func in tests:
        try:
            results[name] = test_func()
        except Exception as e:
            print(f"\n✗ Test '{name}' crashed: {str(e)}")
            results[name] = False
    
    # Summary
    print("\n" + "=" * 60)
    print("Test Summary")
    print("=" * 60)
    
    for name, passed in results.items():
        status = "✓ PASS" if passed else "✗ FAIL"
        print(f"  {status} - {name}")
    
    passed_count = sum(1 for p in results.values() if p)
    total_count = len(results)
    
    print(f"\nTotal: {passed_count}/{total_count} tests passed")
    
    if passed_count == total_count:
        print("\n🎉 All tests passed! Data sources ready to use.")
    else:
        print("\n⚠  Some tests failed. Check API keys and connectivity.")
        print("   See src/data_sources/README.md for setup instructions.")


if __name__ == "__main__":
    main()

