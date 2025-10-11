from __future__ import annotations

"""
RV forecast model (LSTM/TFT interface).

This module provides a thin interface that can be wired to a real dataset later.
For now, it exposes stubs you can call/extend without changing downstream code.
"""

from dataclasses import dataclass
from typing import Optional


@dataclass
class RVForecast:
    tau_days: int
    rv_annualized: float


class RVLSTM:
    def __init__(self, input_size: int = 16, hidden_size: int = 64, num_layers: int = 2):
        self.input_size = input_size
        self.hidden_size = hidden_size
        self.num_layers = num_layers
        # Defer actual torch model wiring until data is available

    def fit(self, X, y) -> None:
        raise NotImplementedError("Connect dataset and implement training loop later.")

    def predict(self, X, tau_days: int) -> RVForecast:
        raise NotImplementedError("Load trained weights and return RVForecast.")

    @staticmethod
    def load(path: str) -> "RVLSTM":
        # Placeholder for model loading
        return RVLSTM()


