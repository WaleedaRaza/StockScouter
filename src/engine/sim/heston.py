from __future__ import annotations

from dataclasses import dataclass
from typing import Optional

import torch


@dataclass
class HestonParams:
    v0: float
    kappa: float
    theta: float
    sigma_v: float
    rho: float


def calibrate_heston(chain_data, spot: float) -> Optional[HestonParams]:
    # Placeholder: wire to optimization later
    return HestonParams(v0=0.04, kappa=2.0, theta=0.04, sigma_v=0.3, rho=-0.7)


def simulate_heston_paths_gpu(
    S0: float,
    params: HestonParams,
    T: float,
    n_steps: int,
    n_paths: int,
    device: Optional[str] = None,
) -> torch.Tensor:
    # Euler discretization of Heston on GPU
    dev = torch.device(device if device else ("cuda" if torch.cuda.is_available() else "cpu"))
    dt = T / n_steps
    S = torch.full((n_paths,), S0, device=dev, dtype=torch.float32)
    v = torch.full((n_paths,), params.v0, device=dev, dtype=torch.float32)

    for _ in range(n_steps):
        Z1 = torch.randn(n_paths, device=dev)
        Z2 = params.rho * Z1 + torch.sqrt(1 - params.rho ** 2) * torch.randn(n_paths, device=dev)
        v = torch.clamp(v + params.kappa * (params.theta - v) * dt + params.sigma_v * torch.sqrt(v * dt) * Z2, min=1e-8)
        S = S * torch.exp((- 0.5 * v) * dt + torch.sqrt(v * dt) * Z1)
    return S

