"""Data models for API responses."""

from dataclasses import dataclass
from typing import Optional, List, Dict, Any
from datetime import datetime, date


@dataclass
class StockPrice:
    """Stock price data."""
    ticker: str
    price: float
    bid: float
    ask: float
    bid_size: int
    ask_size: int
    timestamp: datetime
    previous_close: float
    daily_change: float
    daily_change_pct: float
    volume: int
    
    @classmethod
    def from_polygon(cls, trade_data: Dict, quote_data: Dict, prev_data: Dict) -> 'StockPrice':
        """Create from Polygon API responses."""
        # Parse trade data
        last_trade = trade_data.get('results', {})
        price = last_trade.get('p', 0.0)
        timestamp = datetime.fromtimestamp(last_trade.get('t', 0) / 1000.0)
        
        # Parse quote data
        last_quote = quote_data.get('results', {})
        bid = last_quote.get('P', 0.0)
        ask = last_quote.get('p', 0.0)
        bid_size = last_quote.get('S', 0)
        ask_size = last_quote.get('s', 0)
        
        # Parse previous day data
        prev_results = prev_data.get('results', [{}])[0]
        prev_close = prev_results.get('c', 0.0)
        volume = prev_results.get('v', 0)
        
        # Calculate change
        daily_change = price - prev_close
        daily_change_pct = (daily_change / prev_close) if prev_close > 0 else 0.0
        
        return cls(
            ticker=last_trade.get('T', ''),
            price=price,
            bid=bid,
            ask=ask,
            bid_size=bid_size,
            ask_size=ask_size,
            timestamp=timestamp,
            previous_close=prev_close,
            daily_change=daily_change,
            daily_change_pct=daily_change_pct,
            volume=volume
        )


@dataclass
class OptionContract:
    """Single option contract data."""
    ticker: str
    underlying_ticker: str
    strike: float
    expiry: date
    option_type: str  # 'call' or 'put'
    bid: float
    ask: float
    mid: float
    last: float
    volume: int
    open_interest: int
    iv: float
    delta: float
    gamma: float
    theta: float
    vega: float
    rho: float
    timestamp: datetime
    
    @classmethod
    def from_polygon(cls, data: Dict) -> 'OptionContract':
        """Create from Polygon options snapshot."""
        details = data.get('details', {})
        greeks = data.get('greeks', {})
        last_quote = data.get('last_quote', {})
        day = data.get('day', {})
        
        return cls(
            ticker=details.get('ticker', ''),
            underlying_ticker=details.get('underlying_ticker', ''),
            strike=details.get('strike_price', 0.0),
            expiry=datetime.strptime(details.get('expiration_date', ''), '%Y-%m-%d').date(),
            option_type=details.get('contract_type', '').lower(),
            bid=last_quote.get('bid', 0.0),
            ask=last_quote.get('ask', 0.0),
            mid=(last_quote.get('bid', 0.0) + last_quote.get('ask', 0.0)) / 2.0,
            last=data.get('last_trade', {}).get('price', 0.0),
            volume=day.get('volume', 0),
            open_interest=data.get('open_interest', 0),
            iv=greeks.get('implied_volatility', 0.0),
            delta=greeks.get('delta', 0.0),
            gamma=greeks.get('gamma', 0.0),
            theta=greeks.get('theta', 0.0),
            vega=greeks.get('vega', 0.0),
            rho=greeks.get('rho', 0.0),
            timestamp=datetime.now()
        )


@dataclass
class OptionsChain:
    """Full options chain for a ticker."""
    underlying_ticker: str
    underlying_price: float
    timestamp: datetime
    contracts: List[OptionContract]
    
    @classmethod
    def from_polygon(cls, data: Dict) -> 'OptionsChain':
        """Create from Polygon options chain snapshot."""
        results = data.get('results', [])
        contracts = [OptionContract.from_polygon(c) for c in results]
        
        # Get underlying price from first contract or separate call
        underlying_price = results[0].get('underlying_asset', {}).get('price', 0.0) if results else 0.0
        
        return cls(
            underlying_ticker=results[0].get('details', {}).get('underlying_ticker', '') if results else '',
            underlying_price=underlying_price,
            timestamp=datetime.now(),
            contracts=contracts
        )
    
    def filter_by_expiry(self, expiry: date) -> List[OptionContract]:
        """Get all contracts for a specific expiry."""
        return [c for c in self.contracts if c.expiry == expiry]
    
    def filter_calls(self) -> List[OptionContract]:
        """Get all call options."""
        return [c for c in self.contracts if c.option_type == 'call']
    
    def filter_puts(self) -> List[OptionContract]:
        """Get all put options."""
        return [c for c in self.contracts if c.option_type == 'put']


@dataclass
class MarketContext:
    """Market-wide context data."""
    vix: float
    vix_change: float
    spy_price: float
    spy_change_pct: float
    qqq_price: float
    qqq_change_pct: float
    put_call_ratio: float
    timestamp: datetime
    
    @classmethod
    def from_sources(cls, vix_data: Dict, spy_data: Dict, qqq_data: Dict, pcr_data: Dict) -> 'MarketContext':
        """Create from multiple API sources."""
        # Parse VIX
        vix = vix_data.get('value', 15.0)
        vix_change = vix_data.get('change', 0.0)
        
        # Parse SPY
        spy_results = spy_data.get('results', [{}])[0]
        spy_price = spy_results.get('c', 0.0)
        spy_open = spy_results.get('o', 0.0)
        spy_change_pct = ((spy_price - spy_open) / spy_open) if spy_open > 0 else 0.0
        
        # Parse QQQ
        qqq_results = qqq_data.get('results', [{}])[0]
        qqq_price = qqq_results.get('c', 0.0)
        qqq_open = qqq_results.get('o', 0.0)
        qqq_change_pct = ((qqq_price - qqq_open) / qqq_open) if qqq_open > 0 else 0.0
        
        # Parse PCR
        put_call_ratio = pcr_data.get('ratio', 1.0)
        
        return cls(
            vix=vix,
            vix_change=vix_change,
            spy_price=spy_price,
            spy_change_pct=spy_change_pct,
            qqq_price=qqq_price,
            qqq_change_pct=qqq_change_pct,
            put_call_ratio=put_call_ratio,
            timestamp=datetime.now()
        )


@dataclass
class EarningsEvent:
    """Earnings announcement event."""
    ticker: str
    announce_date: date
    fiscal_period: str
    timing: str  # 'BMO', 'AMC', or 'Time confirmed'
    eps_estimate: Optional[float]
    eps_actual: Optional[float]
    
    @classmethod
    def from_benzinga(cls, data: Dict) -> 'EarningsEvent':
        """Create from Benzinga calendar API."""
        return cls(
            ticker=data.get('ticker', ''),
            announce_date=datetime.strptime(data.get('date', ''), '%Y-%m-%d').date(),
            fiscal_period=data.get('period', ''),
            timing=data.get('time', ''),
            eps_estimate=data.get('eps_est'),
            eps_actual=data.get('eps')
        )


@dataclass
class DividendEvent:
    """Dividend payment event."""
    ticker: str
    ex_date: date
    payment_date: date
    amount: float
    frequency: str
    
    @classmethod
    def from_polygon(cls, data: Dict) -> 'DividendEvent':
        """Create from Polygon dividends API."""
        return cls(
            ticker=data.get('ticker', ''),
            ex_date=datetime.strptime(data.get('ex_dividend_date', ''), '%Y-%m-%d').date(),
            payment_date=datetime.strptime(data.get('pay_date', ''), '%Y-%m-%d').date(),
            amount=data.get('cash_amount', 0.0),
            frequency=data.get('frequency', '')
        )

