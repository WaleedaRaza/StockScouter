"""Events Tab - Earnings and dividend risk analysis."""

import customtkinter as ctk
from typing import Dict, Any, TYPE_CHECKING
import sys
import os

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "../../.."))
from src.gui_v2.theme import get_color

if TYPE_CHECKING:
    from src.gui_v2.pages.analytics import AnalyticsPage


class EventsTab(ctk.CTkScrollableFrame):
    """Events and catalysts risk analysis tab."""
    
    def __init__(self, parent, analytics_page: "AnalyticsPage"):
        super().__init__(parent, fg_color=get_color("bg_primary"))
        self.analytics_page = analytics_page
        self.option_data = None
        
    def load_data(self, option_data: Dict[str, Any]):
        """Load option data and check for events."""
        self.option_data = option_data
        
        # Clear existing
        for widget in self.winfo_children():
            widget.destroy()
        
        # Build UI
        self._build_header()
        self._check_earnings()
        self._check_dividends()
        
    def _build_header(self):
        """Build section header."""
        header = ctk.CTkLabel(
            self,
            text="EVENT RISK ANALYSIS",
            font=ctk.CTkFont(family="Consolas", size=18, weight="bold"),
            text_color=get_color("accent_green"),
        )
        header.pack(pady=(10, 20))
        
        desc = ctk.CTkLabel(
            self,
            text="Events like earnings announcements and ex-dividend dates can significantly affect covered call positions.\n"
                 "Earnings: High IV crush risk after announcement\n"
                 "Ex-dividend: Early assignment risk if dividend > extrinsic value",
            font=ctk.CTkFont(family="Consolas", size=10),
            text_color=get_color("text_secondary"),
            wraplength=900,
            justify="left",
        )
        desc.pack(padx=40, pady=(0, 20))
        
    def _check_earnings(self):
        """Check for earnings within DTE."""
        from src.gui.mock_data import generate_mock_earnings
        from src.engine.features.events import earnings_within_tau
        
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="EARNINGS ANNOUNCEMENT",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        opt = self.option_data
        rec = opt['option_record']
        earnings_events = generate_mock_earnings([opt['ticker']])
        
        has_earnings = earnings_within_tau(rec, earnings_events, opt['dte'])
        
        if has_earnings:
            # Find the event
            event_date = None
            for event in earnings_events:
                if event.ticker == opt['ticker']:
                    event_date = event.announce_date
                    break
            
            status_frame = ctk.CTkFrame(frame, fg_color=get_color("negative"), corner_radius=0)
            status_frame.pack(fill="x", padx=20, pady=10)
            
            warning = ctk.CTkLabel(
                status_frame,
                text=f"⚠ EARNINGS INSIDE EXPIRY: {event_date}",
                font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
                text_color="#FFFFFF",
            )
            warning.pack(pady=10)
            
            desc = ctk.CTkLabel(
                frame,
                text="Risks:\n"
                     "• High IV will crash after earnings → premium decay\n"
                     "• Stock may gap significantly → assignment risk\n"
                     "• Typically avoid selling calls into earnings",
                font=ctk.CTkFont(family="Consolas", size=10),
                text_color=get_color("text_secondary"),
                wraplength=850,
                justify="left",
            )
            desc.pack(padx=20, pady=(0, 15))
        else:
            status_frame = ctk.CTkFrame(frame, fg_color=get_color("accent_green"), corner_radius=0)
            status_frame.pack(fill="x", padx=20, pady=10)
            
            clear = ctk.CTkLabel(
                status_frame,
                text="✅ NO EARNINGS BEFORE EXPIRY",
                font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
                text_color=get_color("bg_primary"),
            )
            clear.pack(pady=10)
            
            desc = ctk.CTkLabel(
                frame,
                text="No earnings announcements between now and expiry. Lower event risk.",
                font=ctk.CTkFont(family="Consolas", size=10),
                text_color=get_color("text_secondary"),
                wraplength=850,
                justify="left",
            )
            desc.pack(padx=20, pady=(0, 15))
        
        frame.pack(fill="x", padx=20, pady=15)
        
        # Event Timeline Visualization (only add once at the end)
        if not hasattr(self, '_timeline_built'):
            self._timeline_built = True
            self._build_event_timeline()
    
    def _build_event_timeline(self):
        """Build event timeline visualization."""
        from src.gui_v2.components.chart_placeholder import ChartPlaceholder, DataTable
        
        chart_frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        chart_frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            chart_frame,
            text="EVENT TIMELINE",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        desc = ctk.CTkLabel(
            chart_frame,
            text="Visual timeline showing key events relative to option expiry: earnings, ex-dividend dates, FOMC meetings, etc.",
            font=ctk.CTkFont(family="Consolas", size=9),
            text_color=get_color("text_dim"),
        )
        desc.pack(padx=20, pady=(0, 10))
        
        # Timeline chart
        timeline = ChartPlaceholder(
            chart_frame,
            title="Today → Expiry (with event markers)",
            height=150,
            chart_type="line",
            axes_labels=("Date", "Events"),
        )
        timeline.pack(fill="x", padx=20, pady=(0, 10))
        
        # Expected move table
        move_table = DataTable(
            chart_frame,
            title="Expected Moves Around Events",
            columns=["Event", "Date", "Expected Move (%)", "Risk Level"],
            rows=3,
        )
        move_table.pack(fill="x", padx=20, pady=(10, 15))
        
        note = ctk.CTkLabel(
            chart_frame,
            text="[Populate with real event dates and historical move data]",
            font=ctk.CTkFont(family="Consolas", size=8),
            text_color=get_color("text_dim"),
        )
        note.pack(pady=(0, 15))
        
    def _check_dividends(self):
        """Check for dividend risk."""
        from src.gui.mock_data import generate_mock_dividends
        from src.engine.features.events import exdiv_hazard
        
        frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            frame,
            text="EX-DIVIDEND RISK",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        opt = self.option_data
        rec = opt['option_record']
        dividend_events = generate_mock_dividends([opt['ticker']])
        
        hazard = exdiv_hazard(rec, dividend_events)
        
        # Find upcoming dividend
        from datetime import date
        upcoming_div = None
        for div in dividend_events:
            if div.ticker == opt['ticker'] and div.ex_date >= date.today():
                upcoming_div = div
                break
        
        if upcoming_div:
            status_color = get_color("negative") if hazard > 0.5 else get_color("accent_amber")
            status_fg = get_color("negative") if hazard > 0.5 else get_color("accent_amber")
            
            status_frame = ctk.CTkFrame(frame, fg_color=status_fg, corner_radius=0)
            status_frame.pack(fill="x", padx=20, pady=10)
            
            warning = ctk.CTkLabel(
                status_frame,
                text=f"{'⚠ HIGH' if hazard > 0.5 else '⚡ MODERATE'} ASSIGNMENT RISK",
                font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
                text_color="#FFFFFF" if hazard > 0.5 else get_color("bg_primary"),
            )
            warning.pack(pady=10)
            
            info = (
                f"Ex-Div Date: {upcoming_div.ex_date}\n"
                f"Dividend: ${upcoming_div.amount:.2f}\n"
                f"Assignment Hazard: {hazard*100:.1f}%\n\n"
                f"If dividend > extrinsic value, call holders may exercise early to capture dividend.\n"
                f"You'd lose the stock and miss the dividend."
            )
            
            desc = ctk.CTkLabel(
                frame,
                text=info,
                font=ctk.CTkFont(family="Consolas", size=10),
                text_color=get_color("text_secondary"),
                wraplength=850,
                justify="left",
            )
            desc.pack(padx=20, pady=(0, 15))
        else:
            status_frame = ctk.CTkFrame(frame, fg_color=get_color("accent_green"), corner_radius=0)
            status_frame.pack(fill="x", padx=20, pady=10)
            
            clear = ctk.CTkLabel(
                status_frame,
                text="✅ NO DIVIDEND RISK",
                font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
                text_color=get_color("bg_primary"),
            )
            clear.pack(pady=10)
            
            desc = ctk.CTkLabel(
                frame,
                text="No upcoming ex-dividend dates. No early assignment risk.",
                font=ctk.CTkFont(family="Consolas", size=10),
                text_color=get_color("text_secondary"),
                wraplength=850,
                justify="left",
            )
            desc.pack(padx=20, pady=(0, 15))
        
        frame.pack(fill="x", padx=20, pady=15)
        
        # Event Timeline Visualization (only add once at the end)
        if not hasattr(self, '_timeline_built'):
            self._timeline_built = True
            self._build_event_timeline()
    
    def _build_event_timeline(self):
        """Build event timeline visualization."""
        from src.gui_v2.components.chart_placeholder import ChartPlaceholder, DataTable
        
        chart_frame = ctk.CTkFrame(self, fg_color=get_color("bg_secondary"), corner_radius=0)
        chart_frame.pack(fill="x", padx=20, pady=10)
        
        title = ctk.CTkLabel(
            chart_frame,
            text="EVENT TIMELINE",
            font=ctk.CTkFont(family="Consolas", size=12, weight="bold"),
            text_color=get_color("text_secondary"),
        )
        title.pack(pady=(15, 10))
        
        desc = ctk.CTkLabel(
            chart_frame,
            text="Visual timeline showing key events relative to option expiry: earnings, ex-dividend dates, FOMC meetings, etc.",
            font=ctk.CTkFont(family="Consolas", size=9),
            text_color=get_color("text_dim"),
        )
        desc.pack(padx=20, pady=(0, 10))
        
        # Timeline chart
        timeline = ChartPlaceholder(
            chart_frame,
            title="Today → Expiry (with event markers)",
            height=150,
            chart_type="line",
            axes_labels=("Date", "Events"),
        )
        timeline.pack(fill="x", padx=20, pady=(0, 10))
        
        # Expected move table
        move_table = DataTable(
            chart_frame,
            title="Expected Moves Around Events",
            columns=["Event", "Date", "Expected Move (%)", "Risk Level"],
            rows=3,
        )
        move_table.pack(fill="x", padx=20, pady=(10, 15))
        
        note = ctk.CTkLabel(
            chart_frame,
            text="[Populate with real event dates and historical move data]",
            font=ctk.CTkFont(family="Consolas", size=8),
            text_color=get_color("text_dim"),
        )
        note.pack(pady=(0, 15))

