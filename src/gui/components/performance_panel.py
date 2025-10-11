"""Performance metrics panel showing session statistics."""

import customtkinter as ctk
from datetime import datetime


class PerformancePanel(ctk.CTkFrame):
    """Panel showing session performance metrics."""
    
    def __init__(self, parent):
        super().__init__(parent, width=200, fg_color=("gray85", "gray18"))
        
        # Title
        title = ctk.CTkLabel(
            self,
            text="📈 Session Stats",
            font=ctk.CTkFont(size=13, weight="bold"),
        )
        title.pack(padx=10, pady=(10, 5))
        
        # Metrics
        self.opps_label = ctk.CTkLabel(
            self,
            text="Opportunities: 0",
            font=ctk.CTkFont(size=11),
            anchor="w",
        )
        self.opps_label.pack(fill="x", padx=10, pady=2)
        
        self.avg_score_label = ctk.CTkLabel(
            self,
            text="Avg Score: 0.0",
            font=ctk.CTkFont(size=11),
            anchor="w",
        )
        self.avg_score_label.pack(fill="x", padx=10, pady=2)
        
        self.elapsed_label = ctk.CTkLabel(
            self,
            text="Time: 0m 0s",
            font=ctk.CTkFont(size=11),
            anchor="w",
        )
        self.elapsed_label.pack(fill="x", padx=10, pady=2)
        
        self.speed_label = ctk.CTkLabel(
            self,
            text="Speed: 0 ops/min",
            font=ctk.CTkFont(size=11),
            anchor="w",
        )
        self.speed_label.pack(fill="x", padx=10, pady=2)
        
        self.start_time = datetime.now()
        
        # Update timer
        self._update_elapsed()
        
    def update_performance(self, num_opps: int, avg_score: float):
        """Update performance metrics."""
        self.opps_label.configure(text=f"Opportunities: {num_opps}")
        self.avg_score_label.configure(text=f"Avg Score: {avg_score:.1f}")
        
        elapsed = (datetime.now() - self.start_time).total_seconds()
        if elapsed > 0:
            speed = (num_opps / elapsed) * 60  # ops per minute
            self.speed_label.configure(text=f"Speed: {speed:.0f} ops/min")
    
    def _update_elapsed(self):
        """Update elapsed time display."""
        elapsed = (datetime.now() - self.start_time).total_seconds()
        mins = int(elapsed // 60)
        secs = int(elapsed % 60)
        self.elapsed_label.configure(text=f"Time: {mins}m {secs}s")
        self.after(1000, self._update_elapsed)

