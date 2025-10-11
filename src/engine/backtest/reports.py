from __future__ import annotations

from typing import List


def generate_metrics(trades) -> dict:
    # Placeholder: compute CAGR, vol, Sharpe, Sortino, max DD, % assigned, realized AY, turnover
    total_pnl = sum(t.exit_pnl or 0.0 for t in trades)
    assigned_count = sum(1 for t in trades if t.assigned)
    pct_assigned = assigned_count / len(trades) if trades else 0.0
    return {
        "total_pnl": total_pnl,
        "num_trades": len(trades),
        "pct_assigned": pct_assigned,
        "cagr": 0.0,  # wire to actual returns timeseries
        "sharpe": 0.0,
        "sortino": 0.0,
        "max_dd": 0.0,
        "realized_ay": 0.0,
        "turnover": 0.0,
    }


def generate_ablation_report(base_metrics: dict, ablated_metrics: dict, feature_name: str) -> str:
    diff = base_metrics["sharpe"] - ablated_metrics["sharpe"]
    return f"Ablation: removing {feature_name} -> Sharpe diff: {diff:.3f}"

