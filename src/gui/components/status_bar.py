"""Status bar component."""

import customtkinter as ctk
from datetime import datetime


class StatusBar(ctk.CTkFrame):
    """Bottom status bar showing messages and system info."""
    
    def __init__(self, parent):
        super().__init__(parent, height=30, corner_radius=0, fg_color=("gray85", "gray15"))
        
        self.message_label = ctk.CTkLabel(
            self,
            text="Ready",
            font=ctk.CTkFont(size=11),
            anchor="w",
        )
        self.message_label.pack(side="left", padx=10)
        
        self.time_label = ctk.CTkLabel(
            self,
            text=self._get_time(),
            font=ctk.CTkFont(size=11),
            anchor="e",
        )
        self.time_label.pack(side="right", padx=10)
        
        # Update time every second
        self._update_time()
        
    def set_message(self, message: str, error: bool = False):
        """Set status message."""
        if error:
            self.message_label.configure(
                text=message,
                text_color=("#C00000", "#FF4444")
            )
        else:
            self.message_label.configure(text=message)
        
    def _get_time(self) -> str:
        """Get formatted current time."""
        return datetime.now().strftime("%I:%M:%S %p")
        
    def _update_time(self):
        """Update time display."""
        self.time_label.configure(text=self._get_time())
        self.after(1000, self._update_time)

