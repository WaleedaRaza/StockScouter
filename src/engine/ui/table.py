from __future__ import annotations

from dataclasses import dataclass
from typing import List


@dataclass
class RankedRow:
    ticker: str
    strike: float
    expiry: str
    net_ay: float
    delta: float
    iv_rv_edge: float
    theta_sharpe: float
    scc: float
    gex: float
    liquidity: float
    exdiv_hazard: float
    score: float
    badges: List[str]


def format_table(rows: List[RankedRow]) -> str:
    header = "Ticker | Strike | Expiry | Net AY | Δ | IV–RV | ThetaSharpe | SCC | GEX | Liquidity | Ex-Div Hazard | Score | Badges"
    lines = [header, "-" * len(header)]
    for r in rows:
        badges_str = ", ".join(r.badges) if r.badges else ""
        line = f"{r.ticker} | {r.strike:.2f} | {r.expiry} | {r.net_ay:.3f} | {r.delta:.3f} | {r.iv_rv_edge:.3f} | {r.theta_sharpe:.3f} | {r.scc:.3f} | {r.gex:.2e} | {r.liquidity:.3f} | {r.exdiv_hazard:.3f} | {r.score:.1f} | {badges_str}"
        lines.append(line)
    return "\n".join(lines)


def export_csv(rows: List[RankedRow], path: str) -> None:
    import csv

    with open(path, "w", newline="", encoding="utf-8") as f:
        writer = csv.writer(f)
        writer.writerow(["Ticker", "Strike", "Expiry", "Net_AY", "Delta", "IV_RV_Edge", "ThetaSharpe", "SCC", "GEX", "Liquidity", "ExDiv_Hazard", "Score", "Badges"])
        for r in rows:
            badges_str = ";".join(r.badges) if r.badges else ""
            writer.writerow([r.ticker, r.strike, r.expiry, r.net_ay, r.delta, r.iv_rv_edge, r.theta_sharpe, r.scc, r.gex, r.liquidity, r.exdiv_hazard, r.score, badges_str])

