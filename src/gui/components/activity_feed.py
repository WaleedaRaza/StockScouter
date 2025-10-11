"""Activity feed panel showing recent user actions."""

import customtkinter as ctk
from datetime import datetime
from typing import List


class ActivityFeed(ctk.CTkFrame):
    """Panel showing chronological log of recent actions."""
    
    def __init__(self, parent):
        super().__init__(parent, width=300)
        
        # Title
        title = ctk.CTkLabel(
            self,
            text="📝 Recent Activity",
            font=ctk.CTkFont(size=14, weight="bold"),
        )
        title.pack(padx=10, pady=(10, 5))
        
        # Activity log frame
        self.log_frame = ctk.CTkScrollableFrame(self, fg_color="transparent", height=200)
        self.log_frame.pack(fill="both", expand=True, padx=10, pady=5)
        
        self.activities: List[str] = []
        
        # Add initial demo activities
        self._add_demo_activities()
        
    def _add_demo_activities(self):
        """Add demo activity log entries."""
        demo_activities = [
            ("14:32", "Scored 15 tickers"),
            ("14:31", "Auto-loaded demo data"),
            ("14:31", "Added JPM to watchlist"),
            ("14:31", "Added GS to watchlist"),
            ("14:31", "Added BA to watchlist"),
            ("14:30", "Regime → Calm"),
            ("14:30", "Session started"),
        ]
        
        for time_str, action in demo_activities:
            self._add_activity_entry(time_str, action)
    
    def _add_activity_entry(self, time_str: str, action: str):
        """Add a single activity entry."""
        entry = ctk.CTkLabel(
            self.log_frame,
            text=f"{time_str}  {action}",
            font=ctk.CTkFont(size=11),
            anchor="w",
        )
        entry.pack(fill="x", pady=1)
        
    def log_action(self, action: str):
        """Log a new action with timestamp."""
        time_str = datetime.now().strftime("%H:%M")
        self._add_activity_entry(time_str, action)
        self.activities.append((time_str, action))

