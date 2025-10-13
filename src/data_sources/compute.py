"""Compute derived metrics from raw data."""

import numpy as np
from typing import Dict, Any, List, Optional
from datetime import datetime


def compute_realized_volatility(price_data: Dict[str, Any], window: int = 30) -> Dict[str, float]:
    """
    Compute realized volatility (HV) from historical prices.
    
    RV = stdev(log_returns) * sqrt(252)
    """
    try:
        results = price_data.get('results', [])
        if len(results) < window:
            return {'realized_volatility': 0.0, 'period_days': len(results)}
        
        # Extract closing prices
        closes = [bar.get('c', 0.0) for bar in results]
        
        # Compute log returns
        log_returns = np.diff(np.log(closes))
        
        # Compute annualized volatility
        rv = np.std(log_returns) * np.sqrt(252)
        
        return {
            'realized_volatility': float(rv),
            'period_days': len(closes),
            'mean_return': float(np.mean(log_returns) * 252),
            'min_return': float(np.min(log_returns)),
            'max_return': float(np.max(log_returns))
        }
    
    except Exception as e:
        print(f"Error computing realized volatility: {str(e)}")
        return {'realized_volatility': 0.0, 'error': str(e)}


def compute_market_gex(chain_data: Dict[str, Any], contract_size: int = 100) -> Dict[str, float]:
    """
    Compute total market Gamma Exposure (GEX) from options chain.
    
    GEX = sum(±gamma * OI * S² * contract_size) for all strikes
    Positive GEX = dealers short gamma (stabilizing)
    Negative GEX = dealers long gamma (amplifying)
    """
    try:
        results = chain_data.get('results', [])
        if not results:
            return {'total_gex': 0.0, 'call_gex': 0.0, 'put_gex': 0.0}
        
        # Get spot price
        spot = results[0].get('underlying_asset', {}).get('price', 0.0)
        
        total_gex = 0.0
        call_gex = 0.0
        put_gex = 0.0
        
        for contract in results:
            greeks = contract.get('greeks', {})
            gamma = greeks.get('gamma', 0.0)
            oi = contract.get('open_interest', 0)
            option_type = contract.get('details', {}).get('contract_type', '').lower()
            
            if gamma == 0 or oi == 0:
                continue
            
            # GEX = gamma * OI * spot² * contract_size
            # Sign: customers typically long → dealers short → negative sign
            gex_contribution = -gamma * oi * (spot ** 2) * contract_size
            
            total_gex += gex_contribution
            
            if option_type == 'call':
                call_gex += gex_contribution
            else:
                put_gex += gex_contribution
        
        # Find zero-gamma strike
        zero_gamma_strike = find_zero_gamma_strike(chain_data, contract_size)
        
        return {
            'total_gex': float(total_gex),
            'total_gex_billions': float(total_gex / 1e9),
            'call_gex': float(call_gex),
            'put_gex': float(put_gex),
            'zero_gamma_strike': zero_gamma_strike,
            'interpretation': 'Positive GEX = Stabilizing' if total_gex > 0 else 'Negative GEX = Amplifying'
        }
    
    except Exception as e:
        print(f"Error computing GEX: {str(e)}")
        return {'total_gex': 0.0, 'error': str(e)}


def find_zero_gamma_strike(chain_data: Dict[str, Any], contract_size: int = 100) -> Optional[float]:
    """
    Find the strike where cumulative GEX crosses zero.
    
    This is the "pin level" where dealers have no net gamma exposure.
    """
    try:
        results = chain_data.get('results', [])
        if not results:
            return None
        
        spot = results[0].get('underlying_asset', {}).get('price', 0.0)
        
        # Aggregate GEX by strike
        gex_by_strike = {}
        
        for contract in results:
            strike = contract.get('details', {}).get('strike_price', 0.0)
            greeks = contract.get('greeks', {})
            gamma = greeks.get('gamma', 0.0)
            oi = contract.get('open_interest', 0)
            option_type = contract.get('details', {}).get('contract_type', '').lower()
            
            if strike == 0 or gamma == 0 or oi == 0:
                continue
            
            # Calls contribute positive, puts negative (from dealer perspective)
            sign = 1.0 if option_type == 'call' else -1.0
            gex = -sign * gamma * oi * (spot ** 2) * contract_size
            
            gex_by_strike[strike] = gex_by_strike.get(strike, 0.0) + gex
        
        if not gex_by_strike:
            return None
        
        # Sort by strike
        sorted_strikes = sorted(gex_by_strike.items())
        
        # Find where cumulative GEX crosses zero
        cum_gex = 0.0
        prev_strike = sorted_strikes[0][0]
        prev_cum = 0.0
        
        for strike, gex in sorted_strikes:
            cum_gex += gex
            
            # Check for zero crossing
            if (prev_cum < 0 and cum_gex > 0) or (prev_cum > 0 and cum_gex < 0):
                # Linear interpolation
                if abs(prev_cum) + abs(cum_gex) == 0:
                    return strike
                weight = abs(prev_cum) / (abs(prev_cum) + abs(cum_gex))
                return prev_strike * (1 - weight) + strike * weight
            
            prev_strike = strike
            prev_cum = cum_gex
        
        return None
    
    except Exception as e:
        print(f"Error finding zero-gamma strike: {str(e)}")
        return None


def compute_avg_volume(price_data: Dict[str, Any], days: int = 30) -> Dict[str, float]:
    """
    Compute average volume over specified period.
    """
    try:
        results = price_data.get('results', [])
        if len(results) < days:
            days = len(results)
        
        # Get last N days of volume
        volumes = [bar.get('v', 0) for bar in results[-days:]]
        
        avg_volume = np.mean(volumes)
        median_volume = np.median(volumes)
        
        return {
            'avg_volume': float(avg_volume),
            'median_volume': float(median_volume),
            'period_days': days,
            'total_volume': float(np.sum(volumes))
        }
    
    except Exception as e:
        print(f"Error computing average volume: {str(e)}")
        return {'avg_volume': 0.0, 'error': str(e)}


def compute_iv_percentile(current_iv: float, iv_history: List[float]) -> float:
    """
    Compute IV percentile (IV Rank).
    
    Tells you where current IV sits relative to historical range.
    """
    if not iv_history or len(iv_history) < 10:
        return 50.0  # Default to mid-range
    
    # Count how many historical IVs are below current
    below_count = sum(1 for iv in iv_history if iv < current_iv)
    percentile = (below_count / len(iv_history)) * 100
    
    return float(percentile)


def compute_expected_move(price: float, iv: float, dte: int) -> Dict[str, float]:
    """
    Compute expected price move based on IV.
    
    Expected Move = Price * IV * sqrt(DTE/365)
    """
    if dte <= 0 or iv <= 0:
        return {'expected_move_dollars': 0.0, 'expected_move_pct': 0.0}
    
    time_factor = np.sqrt(dte / 365.0)
    expected_move_dollars = price * iv * time_factor
    expected_move_pct = iv * time_factor * 100
    
    return {
        'expected_move_dollars': float(expected_move_dollars),
        'expected_move_pct': float(expected_move_pct),
        'expected_high': float(price + expected_move_dollars),
        'expected_low': float(price - expected_move_dollars),
        'dte': dte,
        'iv': iv
    }

