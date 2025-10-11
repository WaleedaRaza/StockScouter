from __future__ import annotations

import math
from typing import Optional

import torch


def _device(select: Optional[str] = None) -> torch.device:
    if select is not None:
        return torch.device(select)
    return torch.device("cuda" if torch.cuda.is_available() else "cpu")


def simulate_terminal_prices_lognormal(
    spot: float,
    sigma_annualized: float,
    tau_days: int,
    n_paths: int = 8192,
    mu_annualized: float = 0.0,
    device: Optional[str] = None,
) -> torch.Tensor:
    """Simulate terminal prices under lognormal dynamics on GPU/CPU using torch.

    dS/S = mu dt + sigma dW, Euler solution at T: S_T = S0 * exp((mu - 0.5 sigma^2) T + sigma sqrt(T) Z)
    """
    dev = _device(device)
    T = tau_days / 365.0
    sigma = max(sigma_annualized, 1e-8)
    z = torch.randn(n_paths, device=dev)
    drift = (mu_annualized - 0.5 * sigma * sigma) * T
    diff = sigma * math.sqrt(T) * z
    ST = float(spot) * torch.exp(drift + diff)
    return ST


def bs_call_price_torch(S: torch.Tensor, K: torch.Tensor, sigma: torch.Tensor, T: torch.Tensor, r: float = 0.0, q: float = 0.0) -> torch.Tensor:
    """Black–Scholes call price vectorized on torch device."""
    eps = 1e-12
    sigma = torch.clamp(sigma, min=eps)
    T = torch.clamp(T, min=eps)
    d1 = (torch.log((S + eps) / (K + eps)) + (r - q + 0.5 * sigma ** 2) * T) / (sigma * torch.sqrt(T))
    d2 = d1 - sigma * torch.sqrt(T)
    from torch.distributions.normal import Normal

    norm = Normal(loc=0.0, scale=1.0)
    Nd1 = norm.cdf(d1)
    Nd2 = norm.cdf(d2)
    disc_r = torch.exp(-r * T)
    disc_q = torch.exp(-q * T)
    return disc_q * S * Nd1 - disc_r * K * Nd2


