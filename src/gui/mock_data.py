"""Mock data generator for UI demo mode."""

from datetime import datetime, date, timedelta
from typing import List
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


DEMO_TICKERS = ["AAPL", "MSFT", "GOOGL", "AMZN", "TSLA", "NVDA", "META", "AMD", "SPY", "QQQ"]


def generate_mock_option(
    ticker: str,
    spot: float,
    strike: float,
    days_to_expiry: int,
    iv: float = 0.28,
) -> OptionRecord:
    """Generate a single realistic mock option record."""
    asof = datetime.now()
    expiry = (asof + timedelta(days=days_to_expiry)).date()
    
    # Moneyness
    moneyness = strike / spot
    delta = max(0.05, min(0.95, 1.0 - moneyness + random.uniform(-0.05, 0.05)))
    
    # Premium based on intrinsic + extrinsic
    intrinsic = max(0, spot - strike)
    time_value = spot * iv * (days_to_expiry / 365.0) ** 0.5 * delta
    mid = intrinsic + time_value + random.uniform(-0.5, 0.5)
    spread = mid * random.uniform(0.01, 0.05)
    
    return OptionRecord(
        ticker=ticker,
        asof=asof,
        expiry=expiry,
        strike=strike,
        option_type=OptionType.CALL,
        bid=max(0.01, mid - spread / 2),
        ask=mid + spread / 2,
        mid=mid,
        open_interest=int(random.uniform(500, 10000)),
        volume=int(random.uniform(100, 3000)),
        iv=iv + random.uniform(-0.02, 0.02),
        greeks=Greeks(
            delta=delta,
            gamma=random.uniform(0.01, 0.03),
            theta=-random.uniform(0.02, 0.15),
            vega=random.uniform(0.08, 0.20),
        ),
        underlying_price=spot,
    )


def generate_mock_chain(ticker: str, num_strikes: int = 5) -> OptionChain:
    """Generate a mock option chain for a ticker."""
    spot = random.uniform(100, 500)
    records = []
    
    for days in [14, 21, 30]:
        for i in range(num_strikes):
            strike_offset = (i - num_strikes // 2) * (spot * 0.025)
            strike = round((spot + strike_offset) / 5) * 5  # Round to nearest $5
            rec = generate_mock_option(ticker, spot, strike, days)
            records.append(rec)
    
    return OptionChain(records=records)


def generate_mock_watchlist(tickers: List[str] = None) -> List[OptionChain]:
    """Generate mock chains for a watchlist."""
    if tickers is None:
        tickers = random.sample(DEMO_TICKERS, 5)
    return [generate_mock_chain(t) for t in tickers]


def generate_mock_macro() -> MacroInputs:
    """Generate mock macro data."""
    vix_spot = random.uniform(12, 25)
    return MacroInputs(
        vix_spot=vix_spot,
        vix_1m=vix_spot + random.uniform(-1, 2),
        vix_3m=vix_spot + random.uniform(0, 3),
        move=random.uniform(80, 120),
        credit_spread_proxy=random.uniform(0.5, 2.0),
    )


def generate_mock_earnings(tickers: List[str]) -> List[EarningsEvent]:
    """Generate mock earnings events."""
    events = []
    for ticker in random.sample(tickers, min(2, len(tickers))):
        announce_date = date.today() + timedelta(days=random.randint(5, 45))
        events.append(EarningsEvent(ticker=ticker, announce_date=announce_date))
    return events


def generate_mock_dividends(tickers: List[str]) -> List[DividendEvent]:
    """Generate mock dividend events."""
    events = []
    for ticker in random.sample(tickers, min(3, len(tickers))):
        ex_date = date.today() + timedelta(days=random.randint(10, 60))
        amount = random.uniform(0.5, 2.0)
        events.append(DividendEvent(ticker=ticker, ex_date=ex_date, amount=amount))
    return events

