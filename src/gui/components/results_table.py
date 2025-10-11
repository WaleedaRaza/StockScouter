"""Results table component with sortable columns."""

import customtkinter as ctk
from typing import TYPE_CHECKING, List, Dict, Any

if TYPE_CHECKING:
    from src.gui.app import CoveredCallsApp


class ResultsTable(ctk.CTkFrame):
    """Scrollable table displaying ranked covered call opportunities."""
    
    def __init__(self, parent, app: "CoveredCallsApp"):
        super().__init__(parent)
        self.app = app
        self.results = []
        self.sort_column = "score"
        self.sort_reverse = True
        
        # Header
        header_frame = ctk.CTkFrame(self)
        header_frame.pack(fill="x", padx=5, pady=5)
        
        title = ctk.CTkLabel(
            header_frame,
            text="📊 Ranked Opportunities",
            font=ctk.CTkFont(size=18, weight="bold"),
        )
        title.pack(side="left", padx=10)
        
        self.count_label = ctk.CTkLabel(
            header_frame,
            text="0 results",
            font=ctk.CTkFont(size=12),
            text_color=("gray40", "gray60"),
        )
        self.count_label.pack(side="right", padx=10)
        
        # Column headers
        self.headers_frame = ctk.CTkFrame(self, fg_color=("gray80", "gray20"))
        self.headers_frame.pack(fill="x", padx=5, pady=(0, 5))
        
        self.columns = [
            ("ticker", "Ticker", 80),
            ("strike", "Strike", 80),
            ("expiry", "Expiry", 90),
            ("net_ay", "Net AY", 80),
            ("delta", "Δ", 60),
            ("iv_rv_edge", "IV-RV", 70),
            ("theta_sharpe", "Θ/σ", 70),
            ("scc", "SCC", 70),
            ("liquidity", "Liq", 60),
            ("score", "Score", 80),
        ]
        
        for col_id, col_name, width in self.columns:
            btn = ctk.CTkButton(
                self.headers_frame,
                text=col_name,
                width=width,
                height=32,
                command=lambda c=col_id: self._sort_by_column(c),
                fg_color="transparent",
                hover_color=("gray70", "gray30"),
                font=ctk.CTkFont(size=11, weight="bold"),
            )
            btn.pack(side="left", padx=1)
        
        # Scrollable results area
        self.results_scroll = ctk.CTkScrollableFrame(self, fg_color="transparent")
        self.results_scroll.pack(fill="both", expand=True, padx=5, pady=5)
        
        # Empty state
        self.empty_label = ctk.CTkLabel(
            self.results_scroll,
            text="No results yet.\nAdd tickers to watchlist and run scoring.",
            font=ctk.CTkFont(size=14),
            text_color=("gray50", "gray50"),
        )
        self.empty_label.pack(pady=50)
        
    def _sort_by_column(self, column: str):
        """Sort results by column."""
        if self.sort_column == column:
            self.sort_reverse = not self.sort_reverse
        else:
            self.sort_column = column
            self.sort_reverse = column != "score"  # Default desc for score, asc for others
            
        self._refresh_display()
        
    def update_results(self, results: List[Dict[str, Any]]):
        """Update table with new results."""
        self.results = results
        self._refresh_display()
        
    def _refresh_display(self):
        """Refresh the table display."""
        # Clear existing rows
        for widget in self.results_scroll.winfo_children():
            widget.destroy()
            
        if not self.results:
            self.empty_label = ctk.CTkLabel(
                self.results_scroll,
                text="No results yet.\nAdd tickers to watchlist and run scoring.",
                font=ctk.CTkFont(size=14),
                text_color=("gray50", "gray50"),
            )
            self.empty_label.pack(pady=50)
            self.count_label.configure(text="0 results")
            return
            
        # Sort results
        sorted_results = sorted(
            self.results,
            key=lambda x: x.get(self.sort_column, 0),
            reverse=self.sort_reverse,
        )
        
        # Display rows
        for idx, result in enumerate(sorted_results):
            self._create_row(result, idx)
            
        self.count_label.configure(text=f"{len(sorted_results)} results")
        
    def _create_row(self, result: Dict[str, Any], idx: int):
        """Create a single result row."""
        row_frame = ctk.CTkFrame(
            self.results_scroll,
            fg_color=("gray90", "gray17") if idx % 2 == 0 else ("gray95", "gray20"),
        )
        row_frame.pack(fill="x", pady=1)
        
        # Make row clickable
        row_frame.bind("<Button-1>", lambda e: self.app.select_result(result))
        
        for col_id, col_name, width in self.columns:
            value = result.get(col_id, "")
            
            # Format value
            if isinstance(value, float):
                if col_id in ["net_ay", "delta", "iv_rv_edge", "theta_sharpe", "liquidity"]:
                    text = f"{value:.3f}"
                elif col_id == "scc":
                    text = f"{value:.4f}"
                elif col_id in ["strike", "score"]:
                    text = f"{value:.1f}"
                else:
                    text = f"{value:.2f}"
            else:
                text = str(value)
            
            # Color coding for score
            text_color = None
            if col_id == "score":
                if value >= 70:
                    text_color = ("#2D5016", "#90EE90")
                elif value >= 50:
                    text_color = ("#5C4A1A", "#FFD700")
                else:
                    text_color = ("#5C1F1F", "#FF6B6B")
            
            label = ctk.CTkLabel(
                row_frame,
                text=text,
                width=width,
                anchor="center",
                font=ctk.CTkFont(size=11),
                text_color=text_color,
            )
            label.pack(side="left", padx=1)
            label.bind("<Button-1>", lambda e: self.app.select_result(result))

