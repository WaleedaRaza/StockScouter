from __future__ import annotations

from dataclasses import dataclass


@dataclass
class ExDivHazardModel:
    """Logistic hazard model for early assignment near ex-div.

    Feature template: (dividend − extrinsic, Δ, borrow fee, spread)
    This is a stub with a simple calibrated-like logistic curve.
    """

    beta_div_minus_ext: float = 3.0
    beta_delta: float = 1.5
    beta_borrow: float = 0.5
    beta_spread: float = -0.2
    intercept: float = -1.0

    def predict_proba(self, dividend_minus_extrinsic: float, delta: float, borrow_fee: float, spread: float) -> float:
        import math

        z = (
            self.intercept
            + self.beta_div_minus_ext * max(dividend_minus_extrinsic, 0.0)
            + self.beta_delta * max(delta, 0.0)
            + self.beta_borrow * max(borrow_fee, 0.0)
            + self.beta_spread * max(spread, 0.0)
        )
        return 1.0 / (1.0 + math.exp(-z))

    @staticmethod
    def default() -> "ExDivHazardModel":
        return ExDivHazardModel()


