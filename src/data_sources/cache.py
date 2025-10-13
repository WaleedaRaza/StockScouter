"""Simple in-memory cache with TTL support."""

import time
from typing import Any, Optional, Dict
from threading import Lock


class DataCache:
    """Thread-safe in-memory cache with TTL."""
    
    def __init__(self):
        self._cache: Dict[str, tuple] = {}  # key -> (value, expiry_time)
        self._lock = Lock()
    
    def get(self, key: str) -> Optional[Any]:
        """Get value from cache if not expired."""
        with self._lock:
            if key not in self._cache:
                return None
            
            value, expiry = self._cache[key]
            
            # Check if expired
            if time.time() > expiry:
                del self._cache[key]
                return None
            
            return value
    
    def set(self, key: str, value: Any, ttl_seconds: int):
        """Set value in cache with TTL."""
        with self._lock:
            expiry_time = time.time() + ttl_seconds
            self._cache[key] = (value, expiry_time)
    
    def delete(self, key: str):
        """Delete a key from cache."""
        with self._lock:
            if key in self._cache:
                del self._cache[key]
    
    def clear(self):
        """Clear all cached data."""
        with self._lock:
            self._cache.clear()
    
    def cleanup_expired(self):
        """Remove all expired entries."""
        with self._lock:
            current_time = time.time()
            expired_keys = [
                key for key, (_, expiry) in self._cache.items()
                if current_time > expiry
            ]
            for key in expired_keys:
                del self._cache[key]
    
    def get_stats(self) -> Dict[str, int]:
        """Get cache statistics."""
        with self._lock:
            total_entries = len(self._cache)
            current_time = time.time()
            expired_entries = sum(
                1 for _, expiry in self._cache.values()
                if current_time > expiry
            )
            return {
                'total_entries': total_entries,
                'expired_entries': expired_entries,
                'active_entries': total_entries - expired_entries
            }

