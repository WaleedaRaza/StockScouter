from __future__ import annotations

from typing import Literal, Optional


def scale_value(
    value: float,
    method: Literal["rolling_zscore", "minmax"] = "rolling_zscore",
    mean: Optional[float] = None,
    std: Optional[float] = None,
    vmin: Optional[float] = None,
    vmax: Optional[float] = None,
) -> float:
    if method == "rolling_zscore":
        if std is None or std == 0 or std is False:
            return 0.0
        return (value - float(mean or 0.0)) / float(std)
    if method == "minmax":
        denom = (float(vmax or 0.0) - float(vmin or 0.0))
        if denom <= 0:
            return 0.0
        return (value - float(vmin or 0.0)) / denom
    return value


