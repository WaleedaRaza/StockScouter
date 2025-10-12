"""Page 1: Ticker Input Dashboard with market context."""

import customtkinter as ctk
from typing import TYPE_CHECKING
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color

if TYPE_CHECKING:
    from src.gui_v2.app import CoveredCallAnalyzer


class TickerInputPage(ctk.CTkFrame):
    """Ticker input dashboard with market context."""
    
    def __init__(self, parent, app: "CoveredCallAnalyzer"):
        super().__init__(parent, fg_color=get_color("bg_primary"))
        self.app = app
        
        # Main container
        main = ctk.CTkFrame(self, fg_color="transparent")
        main.pack(expand=True)
        
        # Title section
        title = ctk.CTkLabel(
            main,
            text="COVERED CALL RESEARCH TERMINAL",
            font=ctk.CTkFont(family="Consolas", size=32, weight="bold"),
            text_color=get_color("accent_green"),
        )
        title.pack(pady=(0, 10))
        
        subtitle = ctk.CTkLabel(
            main,
            text="Deep microscopic analysis • One ticker at a time",
            font=ctk.CTkFont(family="Consolas", size=14),
            text_color=get_color("text_secondary"),
        )
        subtitle.pack(pady=(0, 40))
        
        # Ticker input section
        input_frame = ctk.CTkFrame(main, fg_color=get_color("bg_secondary"), corner_radius=0)
        input_frame.pack(pady=20, padx=40, fill="x")
        
        input_label = ctk.CTkLabel(
            input_frame,
            text="ENTER TICKER:",
            font=ctk.CTkFont(family="Consolas", size=14, weight="bold"),
            text_color=get_color("text_primary"),
        )
        input_label.pack(pady=(15, 5))
        
        # Large input box
        self.ticker_entry = ctk.CTkEntry(
            input_frame,
            width=400,
            height=60,
            font=ctk.CTkFont(family="Consolas", size=28, weight="bold"),
            justify="center",
            fg_color=get_color("bg_tertiary"),
            border_color=get_color("accent_cyan"),
            border_width=2,
        )
        self.ticker_entry.pack(pady=10)
        self.ticker_entry.bind("<Return>", lambda e: self._analyze())
        self.ticker_entry.focus()
        
        # Analyze button
        self.analyze_btn = ctk.CTkButton(
            input_frame,
            text="⚡ ANALYZE TICKER",
            width=300,
            height=50,
            font=ctk.CTkFont(family="Consolas", size=16, weight="bold"),
            command=self._analyze,
            fg_color=get_color("accent_cyan"),
            hover_color=get_color("bg_hover"),
            text_color=get_color("bg_primary"),
        )
        self.analyze_btn.pack(pady=(10, 20))
        
        # Status message
        self.status_label = ctk.CTkLabel(
            input_frame,
            text="",
            font=ctk.CTkFont(family="Consolas", size=12),
            text_color=get_color("accent_amber"),
        )
        self.status_label.pack(pady=(0, 10))
        
        # Market context panel
        self._build_market_context(main)
        
        # Quick reference
        self._build_quick_reference(main)
        
    def _build_market_context(self, parent):
        """Build market context panel."""
        from src.gui.mock_data_enhanced import generate_macro_data
        
        context_frame = ctk.CTkFrame(parent, fg_color=get_color("bg_secondary"), corner_radius=0)
        context_frame.pack(pady=20, padx=40, fill="x")
        
        ctx_title = ctk.CTkLabel(
            context_frame,
            text="MARKET CONTEXT",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        ctx_title.pack(pady=(10, 5))
        
        # Generate market data
        macro = generate_macro_data()
        
        # Grid of metrics
        grid = ctk.CTkFrame(context_frame, fg_color="transparent")
        grid.pack(pady=10, padx=20)
        
        metrics = [
            ("VIX", f"{macro['vix']:.2f}", macro['vix_change']),
            ("SPY", f"${macro['spy']:.2f}", macro['spy_change']),
            ("QQQ", f"${macro['qqq']:.2f}", macro['qqq_change']),
            ("P/C Ratio", f"{macro['put_call_ratio']:.2f}", 0),
        ]
        
        for idx, (label, value, change) in enumerate(metrics):
            metric_frame = ctk.CTkFrame(grid, fg_color=get_color("bg_tertiary"), corner_radius=0, width=200, height=80)
            metric_frame.grid(row=0, column=idx, padx=5, pady=5, sticky="nsew")
            metric_frame.pack_propagate(False)
            
            lbl = ctk.CTkLabel(
                metric_frame,
                text=label,
                font=ctk.CTkFont(family="Consolas", size=10),
                text_color=get_color("text_secondary"),
            )
            lbl.pack(pady=(10, 0))
            
            val = ctk.CTkLabel(
                metric_frame,
                text=value,
                font=ctk.CTkFont(family="Consolas", size=16, weight="bold"),
                text_color=get_color("text_primary"),
            )
            val.pack()
            
            if change != 0:
                chg_color = get_color("positive") if change > 0 else get_color("negative")
                chg = ctk.CTkLabel(
                    metric_frame,
                    text=f"{change*100:+.2f}%",
                    font=ctk.CTkFont(family="Consolas", size=11),
                    text_color=chg_color,
                )
                chg.pack(pady=(0, 10))
        
    def _build_quick_reference(self, parent):
        """Build quick reference section."""
        ref_frame = ctk.CTkFrame(parent, fg_color="transparent")
        ref_frame.pack(pady=(20, 0))
        
        ref_title = ctk.CTkLabel(
            ref_frame,
            text="Available mock tickers: AAPL, MSFT, NVDA, GOOGL, AMZN, TSLA, META, AMD, SPY, QQQ, NFLX, DIS, BA, GS, JPM",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_dim"),
        )
        ref_title.pack()
        
    def _analyze(self):
        """Handle ticker analysis."""
        ticker = self.ticker_entry.get().strip().upper()
        
        if not ticker:
            self.status_label.configure(text="⚠ Enter a ticker symbol", text_color=get_color("accent_amber"))
            return
        
        self.status_label.configure(text=f"Loading {ticker}...", text_color=get_color("accent_cyan"))
        self.update()
        
        # Load ticker data
        success = self.app.load_ticker(ticker)
        
        if not success:
            self.status_label.configure(
                text=f"❌ Ticker {ticker} not found (use mock tickers for now)",
                text_color=get_color("negative")
            )
        else:
            self.status_label.configure(text="", text_color=get_color("text_primary"))
    
    def on_show(self):
        """Called when page is shown."""
        self.ticker_entry.focus()
        self.ticker_entry.delete(0, "end")
        self.status_label.configure(text="")

