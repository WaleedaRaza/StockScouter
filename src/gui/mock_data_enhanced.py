"""Enhanced mock data generator with realistic ticker profiles and correlations."""

from datetime import datetime, date, timedelta
from typing import List, Dict, Tuple
import random

from engine.data.contracts import (
    OptionRecord,
    OptionChain,
    OptionType,
    Greeks,
    EarningsEvent,
    DividendEvent,
    MacroInputs,
)


# Comprehensive ticker profiles with realistic characteristics
TICKER_PROFILES = {
    "AAPL": {
        "category": "mega_cap_tech",
        "spot_range": (170, 190),
        "iv_range": (0.22, 0.28),
        "liquidity": "excellent",
        "score_tendency": (60, 80),
        "daily_change": (-0.02, 0.02),
        "characteristics": {"stable_iv": True, "tight_spreads": True, "high_oi": True}
    },
    "MSFT": {
        "category": "mega_cap_tech",
        "spot_range": (380, 420),
        "iv_range": (0.24, 0.30),
        "liquidity": "excellent",
        "score_tendency": (58, 78),
        "daily_change": (-0.015, 0.025),
        "characteristics": {"stable_iv": True, "tight_spreads": True, "high_oi": True}
    },
    "NVDA": {
        "category": "high_growth_tech",
        "spot_range": (480, 580),
        "iv_range": (0.38, 0.52),
        "liquidity": "excellent",
        "score_tendency": (50, 70),
        "daily_change": (-0.04, 0.05),
        "characteristics": {"volatile": True, "high_gamma": True, "good_oi": True}
    },
    "GOOGL": {
        "category": "mega_cap_tech",
        "spot_range": (135, 155),
        "iv_range": (0.26, 0.32),
        "liquidity": "excellent",
        "score_tendency": (55, 75),
        "daily_change": (-0.02, 0.025),
        "characteristics": {"stable_iv": True, "tight_spreads": True, "high_oi": True}
    },
    "AMZN": {
        "category": "mega_cap_tech",
        "spot_range": (165, 190),
        "iv_range": (0.28, 0.36),
        "liquidity": "excellent",
        "score_tendency": (52, 72),
        "daily_change": (-0.025, 0.03),
        "characteristics": {"moderate_iv": True, "tight_spreads": True, "high_oi": True}
    },
    "TSLA": {
        "category": "high_vol_momentum",
        "spot_range": (200, 300),
        "iv_range": (0.45, 0.65),
        "liquidity": "good",
        "score_tendency": (40, 60),
        "daily_change": (-0.05, 0.06),
        "characteristics": {"high_gamma": True, "wide_spreads": True, "earnings_risk": True}
    },
    "META": {
        "category": "large_cap_tech",
        "spot_range": (470, 550),
        "iv_range": (0.32, 0.42),
        "liquidity": "excellent",
        "score_tendency": (48, 68),
        "daily_change": (-0.03, 0.04),
        "characteristics": {"moderate_iv": True, "tight_spreads": True, "high_oi": True}
    },
    "AMD": {
        "category": "high_vol_tech",
        "spot_range": (120, 160),
        "iv_range": (0.42, 0.58),
        "liquidity": "good",
        "score_tendency": (45, 65),
        "daily_change": (-0.04, 0.05),
        "characteristics": {"high_gamma": True, "moderate_spreads": True, "good_oi": True}
    },
    "SPY": {
        "category": "index_etf",
        "spot_range": (445, 460),
        "iv_range": (0.12, 0.18),
        "liquidity": "exceptional",
        "score_tendency": (65, 85),
        "daily_change": (-0.01, 0.015),
        "characteristics": {"low_iv": True, "ultra_tight_spreads": True, "massive_oi": True}
    },
    "QQQ": {
        "category": "index_etf",
        "spot_range": (380, 400),
        "iv_range": (0.16, 0.22),
        "liquidity": "exceptional",
        "score_tendency": (62, 82),
        "daily_change": (-0.015, 0.02),
        "characteristics": {"low_iv": True, "ultra_tight_spreads": True, "massive_oi": True}
    },
    "NFLX": {
        "category": "high_vol_growth",
        "spot_range": (630, 720),
        "iv_range": (0.38, 0.50),
        "liquidity": "good",
        "score_tendency": (45, 65),
        "daily_change": (-0.035, 0.04),
        "characteristics": {"volatile": True, "moderate_spreads": True, "good_oi": True}
    },
    "DIS": {
        "category": "large_cap_stable",
        "spot_range": (95, 115),
        "iv_range": (0.24, 0.32),
        "liquidity": "good",
        "score_tendency": (52, 72),
        "daily_change": (-0.02, 0.025),
        "characteristics": {"moderate_iv": True, "moderate_spreads": True, "good_oi": True}
    },
    "BA": {
        "category": "large_cap_cyclical",
        "spot_range": (170, 210),
        "iv_range": (0.32, 0.45),
        "liquidity": "good",
        "score_tendency": (48, 68),
        "daily_change": (-0.03, 0.035),
        "characteristics": {"moderate_iv": True, "moderate_spreads": True, "good_oi": True}
    },
    "GS": {
        "category": "large_cap_financial",
        "spot_range": (430, 480),
        "iv_range": (0.22, 0.30),
        "liquidity": "good",
        "score_tendency": (55, 75),
        "daily_change": (-0.025, 0.03),
        "characteristics": {"stable_iv": True, "tight_spreads": True, "high_oi": True}
    },
    "JPM": {
        "category": "large_cap_financial",
        "spot_range": (200, 230),
        "iv_range": (0.20, 0.28),
        "liquidity": "excellent",
        "score_tendency": (58, 78),
        "daily_change": (-0.02, 0.025),
        "characteristics": {"stable_iv": True, "tight_spreads": True, "high_oi": True}
    },
}


def generate_enhanced_option(
    ticker: str,
    spot: float,
    strike: float,
    days_to_expiry: int,
    profile: Dict,
) -> OptionRecord:
    """Generate realistic option with correlated metrics based on profile."""
    asof = datetime.now()
    expiry = (asof + timedelta(days=days_to_expiry)).date()
    
    # IV from profile range
    base_iv = random.uniform(*profile["iv_range"])
    
    # Add term structure (longer = slightly higher IV)
    iv = base_iv * (1 + days_to_expiry / 365 * 0.05)
    
    # Moneyness affects delta
    moneyness = strike / spot
    if moneyness < 0.95:
        delta = random.uniform(0.65, 0.85)
    elif moneyness < 1.00:
        delta = random.uniform(0.45, 0.65)
    elif moneyness < 1.05:
        delta = random.uniform(0.25, 0.45)
    else:
        delta = random.uniform(0.10, 0.25)
    
    # Premium = intrinsic + time value
    intrinsic = max(0, spot - strike)
    time_value = spot * iv * (days_to_expiry / 365.0) ** 0.5 * delta * 0.4
    mid = intrinsic + time_value + random.uniform(-0.3, 0.3)
    
    # Spread based on liquidity
    if profile["liquidity"] == "exceptional":
        spread_pct = random.uniform(0.005, 0.015)
    elif profile["liquidity"] == "excellent":
        spread_pct = random.uniform(0.01, 0.025)
    elif profile["liquidity"] == "good":
        spread_pct = random.uniform(0.02, 0.04)
    else:
        spread_pct = random.uniform(0.03, 0.06)
    
    spread = mid * spread_pct
    
    # OI based on liquidity
    if profile["liquidity"] == "exceptional":
        oi = int(random.uniform(10000, 50000))
    elif profile["liquidity"] == "excellent":
        oi = int(random.uniform(3000, 15000))
    elif profile["liquidity"] == "good":
        oi = int(random.uniform(800, 5000))
    else:
        oi = int(random.uniform(200, 1500))
    
    # Volume = 20-50% of OI typically
    volume = int(oi * random.uniform(0.20, 0.50))
    
    # Gamma higher for ATM
    gamma_scale = 1.0 - abs(moneyness - 1.0) * 2
    gamma = random.uniform(0.008, 0.025) * max(gamma_scale, 0.3)
    
    # Theta scales with time value
    theta = -(time_value / days_to_expiry) * random.uniform(0.8, 1.2)
    
    # Vega scales with time
    vega = spot * (days_to_expiry / 365.0) ** 0.5 * 0.01 * random.uniform(0.8, 1.2)
    
    return OptionRecord(
        ticker=ticker,
        asof=asof,
        expiry=expiry,
        strike=strike,
        option_type=OptionType.CALL,
        bid=max(0.01, mid - spread / 2),
        ask=mid + spread / 2,
        mid=mid,
        open_interest=oi,
        volume=volume,
        iv=iv,
        greeks=Greeks(delta=delta, gamma=gamma, theta=theta, vega=vega),
        underlying_price=spot,
    )


def generate_enhanced_chain(ticker: str, num_strikes: int = 10) -> Tuple[OptionChain, float, float]:
    """Generate enhanced chain with realistic profile. Returns (chain, spot, iv_avg)."""
    profile = TICKER_PROFILES[ticker]
    spot = random.uniform(*profile["spot_range"])
    avg_iv = sum(profile["iv_range"]) / 2
    
    records = []
    
    # Generate options at multiple expiries
    for days in [14, 21, 30, 45]:
        for i in range(num_strikes):
            # Strike spacing: 2.5% intervals around spot
            strike_pct = (i - num_strikes // 2) * 0.025
            strike = round((spot * (1 + strike_pct)) / 5) * 5  # Round to $5
            
            if strike > 0:
                rec = generate_enhanced_option(ticker, spot, strike, days, profile)
                records.append(rec)
    
    return OptionChain(records=records), spot, avg_iv


def generate_macro_data() -> Dict[str, float]:
    """Generate realistic macro market data."""
    vix = random.uniform(12, 20)
    spy_price = random.uniform(445, 460)
    
    return {
        "vix": vix,
        "vix_change": random.uniform(-0.05, 0.03),
        "spy": spy_price,
        "spy_change": random.uniform(-0.015, 0.02),
        "qqq": random.uniform(380, 400),
        "qqq_change": random.uniform(-0.02, 0.025),
        "put_call_ratio": random.uniform(0.75, 1.15),
        "market_gex": random.uniform(-5, 10) * 1e9,  # Billions
        "market_hv": random.uniform(14, 22),
        "skew_index": random.uniform(-3, 0),
    }


def generate_ticker_summary(ticker: str, results: List[Dict]) -> Dict:
    """Generate summary stats for a ticker from its results."""
    ticker_results = [r for r in results if r.get("ticker") == ticker]
    
    if not ticker_results:
        return {"opps": 0, "best_score": 0, "avg_iv": 0.25}
    
    return {
        "opps": len(ticker_results),
        "best_score": max(r.get("score", 0) for r in ticker_results),
        "avg_iv": sum(r.get("iv", 0.25) for r in ticker_results) / len(ticker_results),
    }

