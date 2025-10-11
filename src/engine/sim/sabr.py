from __future__ import annotations

from dataclasses import dataclass
from typing import Optional


@dataclass
class SABRParams:
    alpha: float
    beta: float
    rho: float
    nu: float


def calibrate_sabr(chain_data, spot: float) -> Optional[SABRParams]:
    # Placeholder: wire to scipy.optimize later with SABR IV formula
    # For now, return a dummy calibrated set
    return SABRParams(alpha=0.3, beta=0.7, rho=-0.2, nu=0.4)


def sabr_vol(K: float, F: float, T: float, params: SABRParams) -> float:
    # Simplified SABR vol formula stub
    import math

    alpha, beta, rho, nu = params.alpha, params.beta, params.rho, params.nu
    if K <= 0 or F <= 0 or T <= 0:
        return alpha
    logFK = math.log(F / K)
    z = (nu / alpha) * (F * K) ** ((1 - beta) / 2) * logFK
    x = math.log((math.sqrt(1 - 2 * rho * z + z * z) + z - rho) / (1 - rho)) if abs(z) > 1e-8 else 1.0
    denom = (F * K) ** ((1 - beta) / 2) * (1 + ((1 - beta) ** 2 / 24) * logFK ** 2) if abs(logFK) > 1e-8 else 1.0
    return alpha * (z / x) / denom if denom > 0 else alpha

