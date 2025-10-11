"""Market context panel showing macro market data."""

import customtkinter as ctk
from typing import Dict


class MarketContextPanel(ctk.CTkFrame):
    """Top bar displaying market-wide context and regime."""
    
    def __init__(self, parent):
        super().__init__(parent, height=50, corner_radius=0, fg_color=("gray85", "gray15"))
        
        # Left side - Regime
        self.regime_label = ctk.CTkLabel(
            self,
            text="📊 Regime: Calm",
            font=ctk.CTkFont(size=13, weight="bold"),
            anchor="w",
        )
        self.regime_label.pack(side="left", padx=15)
        
        # Center - Key metrics
        self.metrics_label = ctk.CTkLabel(
            self,
            text="VIX: 15.2 (-2.3%) | SPY: $452.30 (+0.8%) | Put/Call: 0.85 | GEX: +$2.3B",
            font=ctk.CTkFont(size=11),
            anchor="center",
        )
        self.metrics_label.pack(side="left", expand=True, padx=10)
        
        # Right - Additional context
        self.context_label = ctk.CTkLabel(
            self,
            text="HV: 18.5% | Skew: -2.1",
            font=ctk.CTkFont(size=11),
            text_color=("gray40", "gray60"),
            anchor="e",
        )
        self.context_label.pack(side="right", padx=15)
        
    def update_market_data(self, macro_data: Dict):
        """Update market context with new data."""
        vix = macro_data.get("vix", 15.0)
        vix_change = macro_data.get("vix_change", 0.0)
        spy = macro_data.get("spy", 450.0)
        spy_change = macro_data.get("spy_change", 0.0)
        put_call = macro_data.get("put_call_ratio", 0.9)
        gex = macro_data.get("market_gex", 0) / 1e9  # Convert to billions
        hv = macro_data.get("market_hv", 16.0)
        skew = macro_data.get("skew_index", -1.5)
        
        vix_sign = "+" if vix_change >= 0 else ""
        spy_sign = "+" if spy_change >= 0 else ""
        gex_sign = "+" if gex >= 0 else ""
        
        metrics_text = (
            f"VIX: {vix:.1f} ({vix_sign}{vix_change*100:.1f}%) | "
            f"SPY: ${spy:.2f} ({spy_sign}{spy_change*100:.1f}%) | "
            f"Put/Call: {put_call:.2f} | "
            f"GEX: {gex_sign}${abs(gex):.1f}B"
        )
        self.metrics_label.configure(text=metrics_text)
        
        context_text = f"HV: {hv:.1f}% | Skew: {skew:.1f}"
        self.context_label.configure(text=context_text)
    
    def update_regime(self, regime: str):
        """Update the regime display."""
        regime_icons = {
            "Calm": "🟢",
            "Choppy": "🟡",
            "TrendUp": "📈",
            "TrendDown": "📉",
            "Event": "🔴"
        }
        icon = regime_icons.get(regime, "📊")
        self.regime_label.configure(text=f"{icon} Regime: {regime}")

