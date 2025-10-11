from __future__ import annotations

from datetime import datetime, date
from enum import Enum
from typing import List, Optional

from pydantic import BaseModel, Field


class OptionType(str, Enum):
    CALL = "call"
    PUT = "put"


class Greeks(BaseModel):
    delta: float
    gamma: float
    theta: float  # per day
    vega: float


class OptionRecord(BaseModel):
    ticker: str
    asof: datetime
    expiry: date
    strike: float
    option_type: OptionType
    bid: float
    ask: float
    last: Optional[float] = None
    mid: Optional[float] = None
    open_interest: Optional[int] = None
    volume: Optional[int] = None
    iv: Optional[float] = Field(default=None, description="Annualized implied vol (decimal)")
    greeks: Optional[Greeks] = None
    underlying_price: float
    dividend: Optional[float] = None
    borrow_fee: Optional[float] = None


class OptionChain(BaseModel):
    records: List[OptionRecord]


class EarningsEvent(BaseModel):
    ticker: str
    announce_date: date


class DividendEvent(BaseModel):
    ticker: str
    ex_date: date
    amount: float


class MacroInputs(BaseModel):
    vix_spot: Optional[float] = None
    vix_1m: Optional[float] = None
    vix_3m: Optional[float] = None
    move: Optional[float] = None  # rates vol proxy
    credit_spread_proxy: Optional[float] = None


class BorrowData(BaseModel):
    ticker: str
    asof: datetime
    short_interest_pct: Optional[float] = None
    borrow_fee: Optional[float] = None

