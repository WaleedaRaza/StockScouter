"""Page 2: Full Options Chain Browser - Shows ALL strikes/expiries."""

import customtkinter as ctk
from typing import TYPE_CHECKING, List, Dict, Any
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color

if TYPE_CHECKING:
    from src.gui_v2.app import CoveredCallAnalyzer


class ChainBrowserPage(ctk.CTkFrame):
    """Full options chain browser with all strikes and expiries."""
    
    def __init__(self, parent, app: "CoveredCallAnalyzer"):
        super().__init__(parent, fg_color=get_color("bg_primary"))
        self.app = app
        self.chain_data = []
        
        # Header
        header = ctk.CTkFrame(self, height=80, fg_color=get_color("bg_secondary"), corner_radius=0)
        header.pack(fill="x", padx=0, pady=0)
        header.pack_propagate(False)
        
        # Back button
        back_btn = ctk.CTkButton(
            header,
            text="← BACK",
            width=100,
            height=35,
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            command=lambda: app.show_page("ticker_input"),
            fg_color=get_color("bg_tertiary"),
            hover_color=get_color("bg_hover"),
        )
        back_btn.pack(side="left", padx=20, pady=20)
        
        # Title
        self.title_label = ctk.CTkLabel(
            header,
            text="OPTIONS CHAIN",
            font=ctk.CTkFont(family="Consolas", size=20, weight="bold"),
            text_color=get_color("accent_green"),
        )
        self.title_label.pack(side="left", padx=20)
        
        # Ticker info
        self.ticker_info = ctk.CTkLabel(
            header,
            text="",
            font=ctk.CTkFont(family="Consolas", size=14),
            text_color=get_color("text_primary"),
        )
        self.ticker_info.pack(side="left", padx=20)
        
        # Generate button
        self.gen_btn = ctk.CTkButton(
            header,
            text="🔄 REGENERATE CHAIN",
            width=180,
            height=35,
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            command=self._regenerate_chain,
            fg_color=get_color("accent_cyan"),
            text_color=get_color("bg_primary"),
        )
        self.gen_btn.pack(side="right", padx=20, pady=20)
        
        # Table container with scrollbar
        table_container = ctk.CTkFrame(self, fg_color=get_color("bg_primary"))
        table_container.pack(fill="both", expand=True, padx=20, pady=20)
        
        # Scrollable frame for table
        self.table_scroll = ctk.CTkScrollableFrame(
            table_container,
            fg_color=get_color("bg_secondary"),
            corner_radius=0,
        )
        self.table_scroll.pack(fill="both", expand=True)
        
        # Instructions
        self.instructions = ctk.CTkLabel(
            self.table_scroll,
            text="Loading options chain...",
            font=ctk.CTkFont(family="Consolas", size=14),
            text_color=get_color("text_secondary"),
        )
        self.instructions.pack(pady=50)
        
    def on_show(self):
        """Called when page is shown - generate chain."""
        self._load_chain()
        
    def _load_chain(self):
        """Load and display full options chain."""
        if not self.app.ticker or not self.app.ticker_data:
            return
        
        from src.gui.mock_data_enhanced import generate_enhanced_chain
        
        ticker = self.app.ticker
        chain, spot, avg_iv = generate_enhanced_chain(ticker, num_strikes=15)
        
        # Update header
        change = self.app.ticker_data['change_pct']
        change_color = get_color("positive") if change > 0 else get_color("negative")
        
        self.title_label.configure(text=f"{ticker} OPTIONS CHAIN")
        self.ticker_info.configure(
            text=f"Spot: ${spot:.2f} ({change*100:+.2f}%)  |  IV: {avg_iv*100:.1f}%  |  Contracts: {len(chain.records)}"
        )
        
        # Store chain
        self.chain_data = chain.records
        
        # Build table
        self._build_table()
        
    def _regenerate_chain(self):
        """Regenerate chain with fresh random data."""
        self._load_chain()
        
    def _build_table(self):
        """Build the options chain table."""
        # Clear existing
        for widget in self.table_scroll.winfo_children():
            widget.destroy()
        
        if not self.chain_data:
            self.instructions.pack(pady=50)
            return
        
        # Table header
        header_frame = ctk.CTkFrame(self.table_scroll, fg_color=get_color("bg_tertiary"), corner_radius=0, height=40)
        header_frame.pack(fill="x", padx=0, pady=(0, 2))
        header_frame.pack_propagate(False)
        
        headers = [
            ("Expiry", 0.15),
            ("DTE", 0.08),
            ("Strike", 0.10),
            ("%OTM", 0.08),
            ("Bid", 0.08),
            ("Ask", 0.08),
            ("Mid", 0.08),
            ("IV", 0.08),
            ("Delta", 0.08),
            ("OI", 0.10),
            ("Action", 0.12),
        ]
        
        x_pos = 0
        for label, width in headers:
            hdr = ctk.CTkLabel(
                header_frame,
                text=label,
                font=ctk.CTkFont(family="Consolas", size=11, weight="bold"),
                text_color=get_color("text_secondary"),
                anchor="center",
            )
            hdr.place(relx=x_pos, rely=0.5, anchor="w", relwidth=width)
            x_pos += width
        
        # Sort by expiry then strike
        sorted_chain = sorted(self.chain_data, key=lambda r: (r.expiry, r.strike))
        
        # Group by expiry for visual separation
        current_expiry = None
        
        for rec in sorted_chain:
            # Expiry divider
            if rec.expiry != current_expiry:
                current_expiry = rec.expiry
                divider = ctk.CTkFrame(self.table_scroll, fg_color=get_color("border"), height=1)
                divider.pack(fill="x", pady=2)
            
            # Row
            self._create_row(rec)
        
    def _create_row(self, rec):
        """Create a single row for an option."""
        from datetime import datetime
        
        # Calculate values
        dte = (rec.expiry - rec.asof.date()).days
        pct_otm = ((rec.strike - rec.underlying_price) / rec.underlying_price) * 100
        delta = rec.greeks.delta if rec.greeks else 0.0
        
        # Row frame
        row_fg = get_color("bg_secondary")
        row_frame = ctk.CTkFrame(self.table_scroll, fg_color=row_fg, corner_radius=0, height=35)
        row_frame.pack(fill="x", padx=0, pady=1)
        row_frame.pack_propagate(False)
        
        # Hover effect
        def on_enter(e):
            row_frame.configure(fg_color=get_color("bg_hover"))
        
        def on_leave(e):
            row_frame.configure(fg_color=row_fg)
        
        row_frame.bind("<Enter>", on_enter)
        row_frame.bind("<Leave>", on_leave)
        
        # Data
        data = [
            (str(rec.expiry), 0.15, get_color("text_primary")),
            (str(dte), 0.08, get_color("text_secondary")),
            (f"${rec.strike:.2f}", 0.10, get_color("text_primary")),
            (f"{pct_otm:+.1f}%", 0.08, get_color("positive") if pct_otm > 0 else get_color("negative")),
            (f"${rec.bid:.2f}" if rec.bid else "—", 0.08, get_color("text_secondary")),
            (f"${rec.ask:.2f}" if rec.ask else "—", 0.08, get_color("text_secondary")),
            (f"${rec.mid:.2f}" if rec.mid else "—", 0.08, get_color("accent_cyan")),
            (f"{rec.iv*100:.1f}%" if rec.iv else "—", 0.08, get_color("text_primary")),
            (f"{delta:.3f}", 0.08, get_color("text_primary")),
            (str(rec.open_interest or 0), 0.10, get_color("text_secondary")),
        ]
        
        x_pos = 0
        for text, width, color in data:
            lbl = ctk.CTkLabel(
                row_frame,
                text=text,
                font=ctk.CTkFont(family="Consolas", size=10),
                text_color=color,
                anchor="center",
            )
            lbl.place(relx=x_pos, rely=0.5, anchor="w", relwidth=width)
            lbl.bind("<Enter>", on_enter)
            lbl.bind("<Leave>", on_leave)
            x_pos += width
        
        # Analyze button
        analyze_btn = ctk.CTkButton(
            row_frame,
            text="ANALYZE",
            width=80,
            height=25,
            font=ctk.CTkFont(family="Consolas", size=9, weight="bold"),
            command=lambda r=rec: self._analyze_option(r),
            fg_color=get_color("accent_cyan"),
            text_color=get_color("bg_primary"),
            hover_color=get_color("accent_green"),
        )
        analyze_btn.place(relx=x_pos + 0.02, rely=0.5, anchor="w")
    
    def _analyze_option(self, rec):
        """Navigate to analytics for selected option."""
        # Convert OptionRecord to dict
        option_data = {
            "ticker": rec.ticker,
            "strike": rec.strike,
            "expiry": str(rec.expiry),
            "dte": (rec.expiry - rec.asof.date()).days,
            "bid": rec.bid,
            "ask": rec.ask,
            "mid": rec.mid,
            "iv": rec.iv,
            "volume": rec.volume,
            "open_interest": rec.open_interest,
            "delta": rec.greeks.delta if rec.greeks else 0,
            "gamma": rec.greeks.gamma if rec.greeks else 0,
            "theta": rec.greeks.theta if rec.greeks else 0,
            "vega": rec.greeks.vega if rec.greeks else 0,
            "underlying_price": rec.underlying_price,
            "option_record": rec,  # Keep full record for simulations
        }
        
        self.app.load_option(option_data)

