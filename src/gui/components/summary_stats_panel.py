"""Summary statistics panel above results table."""

import customtkinter as ctk
from typing import List, Dict, Any


class SummaryStatsPanel(ctk.CTkFrame):
    """Panel showing aggregate statistics for all results."""
    
    def __init__(self, parent):
        super().__init__(parent, height=60, fg_color=("gray90", "gray18"))
        
        # Title
        title = ctk.CTkLabel(
            self,
            text="📈 Portfolio Summary",
            font=ctk.CTkFont(size=14, weight="bold"),
            anchor="w",
        )
        title.pack(side="left", padx=15, pady=10)
        
        # Main stats
        self.stats_label = ctk.CTkLabel(
            self,
            text="Total: 0 | Avg Score: 0.0",
            font=ctk.CTkFont(size=12),
            anchor="w",
        )
        self.stats_label.pack(side="left", padx=15)
        
        # Score breakdown
        self.breakdown_label = ctk.CTkLabel(
            self,
            text="Excellent: 0 | Good: 0 | Fair: 0 | Poor: 0",
            font=ctk.CTkFont(size=11),
            text_color=("gray30", "gray70"),
            anchor="w",
        )
        self.breakdown_label.pack(side="left", padx=15)
        
        # Financial metrics
        self.financial_label = ctk.CTkLabel(
            self,
            text="Avg AY: 0.0% | Avg Δ: 0.00 | Est Capital: $0",
            font=ctk.CTkFont(size=11),
            text_color=("gray30", "gray70"),
            anchor="e",
        )
        self.financial_label.pack(side="right", padx=15)
        
    def update_stats(self, results: List[Dict[str, Any]]):
        """Update summary with results data."""
        if not results:
            return
        
        total = len(results)
        avg_score = sum(r.get("score", 0) for r in results) / total
        
        # Score breakdown
        excellent = sum(1 for r in results if r.get("score", 0) >= 70)
        good = sum(1 for r in results if 50 <= r.get("score", 0) < 70)
        fair = sum(1 for r in results if 30 <= r.get("score", 0) < 50)
        poor = sum(1 for r in results if r.get("score", 0) < 30)
        
        # Financial metrics
        avg_ay = sum(r.get("net_ay", 0) for r in results) / total
        avg_delta = sum(r.get("delta", 0) for r in results) / total
        
        # Estimate capital (assume 100 shares per position at spot price)
        est_capital = sum(r.get("strike", 0) * 100 for r in results[:20])  # Top 20
        
        # Update labels
        self.stats_label.configure(text=f"Total: {total} | Avg Score: {avg_score:.1f}")
        self.breakdown_label.configure(
            text=f"🟢 Excellent: {excellent} | 🟡 Good: {good} | 🟠 Fair: {fair} | 🔴 Poor: {poor}"
        )
        self.financial_label.configure(
            text=f"Avg AY: {avg_ay*100:.1f}% | Avg Δ: {avg_delta:.2f} | Est Capital: ${est_capital/1000:.0f}K"
        )

