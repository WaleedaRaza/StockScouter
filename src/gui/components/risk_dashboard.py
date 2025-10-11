"""Risk monitoring dashboard panel."""

import customtkinter as ctk
from typing import List, Dict, Any


class RiskDashboard(ctk.CTkFrame):
    """Panel showing portfolio risk metrics and alerts."""
    
    def __init__(self, parent):
        super().__init__(parent, width=300)
        
        # Title
        title = ctk.CTkLabel(
            self,
            text="⚠️ Risk Monitor",
            font=ctk.CTkFont(size=14, weight="bold"),
        )
        title.pack(padx=10, pady=(10, 5))
        
        # Risk metrics frame
        metrics_frame = ctk.CTkFrame(self, fg_color="transparent")
        metrics_frame.pack(fill="x", padx=10, pady=5)
        
        self._add_metric(metrics_frame, "Portfolio CVaR:", "$0")
        self._add_metric(metrics_frame, "Max Single Loss:", "$0")
        self._add_metric(metrics_frame, "Earnings This Week:", "0")
        self._add_metric(metrics_frame, "High IV Positions:", "0")
        self._add_metric(metrics_frame, "Low Liquidity:", "0")
        
        # Alerts section
        alerts_title = ctk.CTkLabel(
            self,
            text="🔴 Alerts",
            font=ctk.CTkFont(size=13, weight="bold"),
            text_color=("#C00000", "#FF4444"),
        )
        alerts_title.pack(padx=10, pady=(15, 5))
        
        self.alerts_frame = ctk.CTkFrame(self, fg_color="transparent")
        self.alerts_frame.pack(fill="both", expand=True, padx=10, pady=5)
        
        # Default alerts
        self._show_default_alerts()
        
    def _add_metric(self, parent, label: str, value: str):
        """Add a metric row."""
        frame = ctk.CTkFrame(parent, fg_color="transparent")
        frame.pack(fill="x", pady=2)
        
        ctk.CTkLabel(frame, text=label, font=ctk.CTkFont(size=11), anchor="w").pack(side="left", fill="x", expand=True)
        ctk.CTkLabel(frame, text=value, font=ctk.CTkFont(size=11, weight="bold"), anchor="e").pack(side="right")
        
    def _show_default_alerts(self):
        """Show default demo alerts."""
        alerts = [
            "• TSLA earnings in 3 days",
            "• META spread >5%",
            "• NVDA high IV (58%)",
        ]
        
        for alert in alerts:
            label = ctk.CTkLabel(
                self.alerts_frame,
                text=alert,
                font=ctk.CTkFont(size=11),
                text_color=("#C05000", "#FF8C00"),
                anchor="w",
            )
            label.pack(fill="x", pady=2)
    
    def update_risk_metrics(self, results: List[Dict[str, Any]]):
        """Update risk metrics from results."""
        # This will be wired when we have real portfolio data
        pass

