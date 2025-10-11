"""Details panel showing metrics and charts for selected opportunity."""

import customtkinter as ctk
from typing import TYPE_CHECKING, Dict, Any, Optional

if TYPE_CHECKING:
    from src.gui.app import CoveredCallsApp


class DetailsPanel(ctk.CTkScrollableFrame):
    """Panel displaying detailed metrics for selected opportunity."""
    
    def __init__(self, parent, app: "CoveredCallsApp"):
        super().__init__(parent, label_text="📈 Details")
        self.app = app
        self.current_result: Optional[Dict[str, Any]] = None
        
        # Empty state
        self.empty_label = ctk.CTkLabel(
            self,
            text="Select an opportunity\nfrom the table\nto view details",
            font=ctk.CTkFont(size=13),
            text_color=("gray50", "gray50"),
        )
        self.empty_label.pack(pady=80)
        
    def update_details(self, result: Dict[str, Any]):
        """Update panel with selected result details."""
        self.current_result = result
        
        # Clear existing
        for widget in self.winfo_children():
            widget.destroy()
            
        # Header with ticker/strike
        header_frame = ctk.CTkFrame(self, fg_color=("gray80", "gray20"))
        header_frame.pack(fill="x", padx=5, pady=5)
        
        ticker_label = ctk.CTkLabel(
            header_frame,
            text=f"{result.get('ticker', '')} ${result.get('strike', '')}",
            font=ctk.CTkFont(size=20, weight="bold"),
        )
        ticker_label.pack(padx=10, pady=10)
        
        expiry_label = ctk.CTkLabel(
            header_frame,
            text=f"Expiry: {result.get('expiry', '')}",
            font=ctk.CTkFont(size=12),
        )
        expiry_label.pack(padx=10, pady=(0, 10))
        
        # Score highlight
        score = result.get("score", 0)
        score_frame = ctk.CTkFrame(self, fg_color=self._score_color(score))
        score_frame.pack(fill="x", padx=5, pady=5)
        
        ctk.CTkLabel(
            score_frame,
            text=f"Score: {score:.1f}",
            font=ctk.CTkFont(size=24, weight="bold"),
            text_color="white",
        ).pack(pady=15)
        
        # Metrics sections
        self._add_section("📊 Baseline Metrics", [
            ("Net Annualized Yield", f"{result.get('net_ay', 0):.2%}"),
            ("Delta", f"{result.get('delta', 0):.3f}"),
            ("Breakeven", f"${result.get('breakeven', 0):.2f}" if 'breakeven' in result else "N/A"),
            ("Upside Potential", f"{result.get('upside_potential', 0):.2%}" if 'upside_potential' in result else "N/A"),
        ])
        
        self._add_section("⚡ Volatility Edge", [
            ("IV-RV Edge", f"{result.get('iv_rv_edge', 0):.3f}"),
            ("Theta Sharpe", f"{result.get('theta_sharpe', 0):.3f}"),
            ("SCC", f"{result.get('scc', 0):.4f}"),
        ])
        
        self._add_section("🏦 Dealer & Flow", [
            ("GEX", f"{result.get('gex', 0):.2e}"),
            ("Liquidity Score", f"{result.get('liquidity', 0):.3f}"),
        ])
        
        self._add_section("⚠️ Risk Indicators", [
            ("Ex-Div Hazard", f"{result.get('exdiv_hazard', 0):.3f}"),
            ("Breakout Probability", f"{result.get('breakout_prob', 0):.2%}" if 'breakout_prob' in result else "N/A"),
        ])
        
        # Badges
        if result.get('badges'):
            self._add_badges(result['badges'])
            
    def _add_section(self, title: str, metrics: list):
        """Add a metrics section."""
        section_frame = ctk.CTkFrame(self)
        section_frame.pack(fill="x", padx=5, pady=5)
        
        title_label = ctk.CTkLabel(
            section_frame,
            text=title,
            font=ctk.CTkFont(size=14, weight="bold"),
            anchor="w",
        )
        title_label.pack(fill="x", padx=10, pady=(10, 5))
        
        for name, value in metrics:
            metric_frame = ctk.CTkFrame(section_frame, fg_color="transparent")
            metric_frame.pack(fill="x", padx=10, pady=2)
            
            name_label = ctk.CTkLabel(
                metric_frame,
                text=name + ":",
                font=ctk.CTkFont(size=11),
                anchor="w",
            )
            name_label.pack(side="left", fill="x", expand=True)
            
            value_label = ctk.CTkLabel(
                metric_frame,
                text=value,
                font=ctk.CTkFont(size=11, weight="bold"),
                anchor="e",
            )
            value_label.pack(side="right")
            
        ctk.CTkLabel(section_frame, text="").pack(pady=5)  # Spacer
        
    def _add_badges(self, badges: list):
        """Add risk badges."""
        badges_frame = ctk.CTkFrame(self)
        badges_frame.pack(fill="x", padx=5, pady=5)
        
        title_label = ctk.CTkLabel(
            badges_frame,
            text="🏷️ Badges",
            font=ctk.CTkFont(size=14, weight="bold"),
            anchor="w",
        )
        title_label.pack(fill="x", padx=10, pady=(10, 5))
        
        for badge in badges:
            badge_label = ctk.CTkLabel(
                badges_frame,
                text=f"⚠️  {badge}",
                font=ctk.CTkFont(size=11),
                anchor="w",
                text_color=("#C05000", "#FF8C00"),
            )
            badge_label.pack(fill="x", padx=10, pady=2)
            
        ctk.CTkLabel(badges_frame, text="").pack(pady=5)
        
    def _score_color(self, score: float) -> str:
        """Get color for score."""
        if score >= 70:
            return "#2D5016"
        elif score >= 50:
            return "#5C4A1A"
        else:
            return "#5C1F1F"

