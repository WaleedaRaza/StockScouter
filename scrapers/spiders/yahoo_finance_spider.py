import scrapy
from datetime import datetime, timedelta
import json
import re
from urllib.parse import urljoin
import logging
from bs4 import BeautifulSoup

class YahooFinanceSpider(scrapy.Spider):
    name = 'yahoo_finance'
    allowed_domains = ['finance.yahoo.com']
    
    def __init__(self, *args, **kwargs):
        super(YahooFinanceSpider, self).__init__(*args, **kwargs)
        self.start_urls = [
            'https://finance.yahoo.com/calendar/earnings',
            'https://finance.yahoo.com/ipo',
            'https://finance.yahoo.com/screener/predefined/most_actives',
        ]
    
    def start_requests(self):
        for url in self.start_urls:
            yield scrapy.Request(
                url=url,
                callback=self.parse,
                headers={
                    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
                    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
                    'Accept-Language': 'en-US,en;q=0.5',
                    'Accept-Encoding': 'gzip, deflate',
                    'Connection': 'keep-alive',
                    'Upgrade-Insecure-Requests': '1',
                },
                meta={'dont_cache': True}
            )
    
    def parse(self, response):
        """Dynamically parse different Yahoo Finance pages based on URL"""
        if 'earnings' in response.url:
            yield from self.parse_earnings_dynamic(response)
        elif 'ipo' in response.url:
            yield from self.parse_ipos_dynamic(response)
        elif 'most_actives' in response.url:
            yield from self.parse_market_movers_dynamic(response)
    
    def parse_earnings_dynamic(self, response):
        """Dynamically parse earnings data using multiple strategies"""
        try:
            # Strategy 1: Extract from JSON-LD structured data
            json_ld_scripts = response.xpath('//script[@type="application/ld+json"]/text()').getall()
            for script in json_ld_scripts:
                try:
                    data = json.loads(script)
                    yield from self.extract_earnings_from_json_ld(data)
                except json.JSONDecodeError:
                    continue
            
            # Strategy 2: Extract from any script containing earnings data
            all_scripts = response.xpath('//script/text()').getall()
            for script in all_scripts:
                if any(keyword in script.lower() for keyword in ['earnings', 'eps', 'revenue']):
                    yield from self.extract_earnings_from_script(script)
            
            # Strategy 3: Parse HTML tables dynamically
            tables = response.xpath('//table')
            for table in tables:
                yield from self.extract_earnings_from_table(table)
            
            # Strategy 4: Parse any div/card structures
            cards = response.xpath('//div[contains(@class, "card") or contains(@class, "item")]')
            for card in cards:
                yield from self.extract_earnings_from_card(card)
                
        except Exception as e:
            self.logger.error(f"Error in dynamic earnings parsing: {e}")
    
    def parse_ipos_dynamic(self, response):
        """Dynamically parse IPO data using multiple strategies"""
        try:
            # Strategy 1: Extract from JSON-LD structured data
            json_ld_scripts = response.xpath('//script[@type="application/ld+json"]/text()').getall()
            for script in json_ld_scripts:
                try:
                    data = json.loads(script)
                    yield from self.extract_ipo_from_json_ld(data)
                except json.JSONDecodeError:
                    continue
            
            # Strategy 2: Extract from any script containing IPO data
            all_scripts = response.xpath('//script/text()').getall()
            for script in all_scripts:
                if any(keyword in script.lower() for keyword in ['ipo', 'initial', 'public', 'offering']):
                    yield from self.extract_ipo_from_script(script)
            
            # Strategy 3: Parse HTML tables dynamically
            tables = response.xpath('//table')
            for table in tables:
                yield from self.extract_ipo_from_table(table)
            
            # Strategy 4: Parse any div/card structures
            cards = response.xpath('//div[contains(@class, "card") or contains(@class, "item")]')
            for card in cards:
                yield from self.extract_ipo_from_card(card)
                
        except Exception as e:
            self.logger.error(f"Error in dynamic IPO parsing: {e}")
    
    def parse_market_movers_dynamic(self, response):
        """Dynamically parse market movers data using multiple strategies"""
        try:
            # Strategy 1: Extract from JSON-LD structured data
            json_ld_scripts = response.xpath('//script[@type="application/ld+json"]/text()').getall()
            for script in json_ld_scripts:
                try:
                    data = json.loads(script)
                    yield from self.extract_market_movers_from_json_ld(data)
                except json.JSONDecodeError:
                    continue
            
            # Strategy 2: Extract from any script containing market data
            all_scripts = response.xpath('//script/text()').getall()
            for script in all_scripts:
                if any(keyword in script.lower() for keyword in ['market', 'stock', 'price', 'volume']):
                    yield from self.extract_market_movers_from_script(script)
            
            # Strategy 3: Parse HTML tables dynamically
            tables = response.xpath('//table')
            for table in tables:
                yield from self.extract_market_movers_from_table(table)
            
            # Strategy 4: Parse any div/card structures
            cards = response.xpath('//div[contains(@class, "card") or contains(@class, "item")]')
            for card in cards:
                yield from self.extract_market_movers_from_card(card)
                
        except Exception as e:
            self.logger.error(f"Error in dynamic market movers parsing: {e}")
    
    def extract_earnings_from_json_ld(self, data):
        """Extract earnings data from JSON-LD structured data"""
        try:
            if isinstance(data, dict):
                # Look for earnings-related properties
                if 'earnings' in data or 'financialData' in data:
                    earnings_data = data.get('earnings', data.get('financialData', {}))
                    if isinstance(earnings_data, list):
                        for earning in earnings_data:
                            yield self.parse_earnings_item(earning)
                    elif isinstance(earnings_data, dict):
                        yield self.parse_earnings_item(earnings_data)
        except Exception as e:
            self.logger.error(f"Error extracting earnings from JSON-LD: {e}")
    
    def extract_earnings_from_script(self, script):
        """Extract earnings data from any script content"""
        try:
            # Look for JSON patterns in script
            json_patterns = re.findall(r'\{[^{}]*"earnings"[^{}]*\}', script)
            for pattern in json_patterns:
                try:
                    data = json.loads(pattern)
                    yield from self.extract_earnings_from_json_ld(data)
                except json.JSONDecodeError:
                    continue
        except Exception as e:
            self.logger.error(f"Error extracting earnings from script: {e}")
    
    def extract_earnings_from_table(self, table):
        """Dynamically extract earnings data from HTML table"""
        try:
            rows = table.xpath('.//tr')
            if len(rows) < 2:  # Need at least header and data row
                return
            
            # Dynamically identify column positions
            headers = rows[0].xpath('.//th|.//td')
            header_texts = [h.get().strip().lower() for h in headers]
            
            # Find relevant column indices
            symbol_idx = self.find_column_index(header_texts, ['symbol', 'ticker', 'stock'])
            company_idx = self.find_column_index(header_texts, ['company', 'name'])
            date_idx = self.find_column_index(header_texts, ['date', 'earnings date'])
            eps_idx = self.find_column_index(header_texts, ['eps', 'earnings per share'])
            revenue_idx = self.find_column_index(header_texts, ['revenue', 'sales'])
            
            # Extract data from rows
            for row in rows[1:]:
                cells = row.xpath('.//td')
                if len(cells) >= max(filter(None, [symbol_idx, company_idx, date_idx, eps_idx, revenue_idx])):
                    yield self.build_earnings_item(cells, symbol_idx, company_idx, date_idx, eps_idx, revenue_idx)
                    
        except Exception as e:
            self.logger.error(f"Error extracting earnings from table: {e}")
    
    def extract_earnings_from_card(self, card):
        """Dynamically extract earnings data from card/div structure"""
        try:
            # Look for earnings-related text patterns
            text = card.get()
            if any(keyword in text.lower() for keyword in ['earnings', 'eps', 'revenue']):
                yield self.parse_earnings_from_text(text)
        except Exception as e:
            self.logger.error(f"Error extracting earnings from card: {e}")
    
    def extract_ipo_from_json_ld(self, data):
        """Extract IPO data from JSON-LD structured data"""
        try:
            if isinstance(data, dict):
                if 'ipo' in data or 'initialPublicOffering' in data:
                    ipo_data = data.get('ipo', data.get('initialPublicOffering', {}))
                    yield self.parse_ipo_item(ipo_data)
        except Exception as e:
            self.logger.error(f"Error extracting IPO from JSON-LD: {e}")
    
    def extract_ipo_from_script(self, script):
        """Extract IPO data from any script content"""
        try:
            json_patterns = re.findall(r'\{[^{}]*"ipo"[^{}]*\}', script)
            for pattern in json_patterns:
                try:
                    data = json.loads(pattern)
                    yield from self.extract_ipo_from_json_ld(data)
                except json.JSONDecodeError:
                    continue
        except Exception as e:
            self.logger.error(f"Error extracting IPO from script: {e}")
    
    def extract_ipo_from_table(self, table):
        """Dynamically extract IPO data from HTML table"""
        try:
            rows = table.xpath('.//tr')
            if len(rows) < 2:
                return
            
            headers = rows[0].xpath('.//th|.//td')
            header_texts = [h.get().strip().lower() for h in headers]
            
            symbol_idx = self.find_column_index(header_texts, ['symbol', 'ticker', 'stock'])
            company_idx = self.find_column_index(header_texts, ['company', 'name'])
            date_idx = self.find_column_index(header_texts, ['date', 'ipo date'])
            price_idx = self.find_column_index(header_texts, ['price', 'ipo price', 'offering price'])
            
            for row in rows[1:]:
                cells = row.xpath('.//td')
                if len(cells) >= max(filter(None, [symbol_idx, company_idx, date_idx, price_idx])):
                    yield self.build_ipo_item(cells, symbol_idx, company_idx, date_idx, price_idx)
                    
        except Exception as e:
            self.logger.error(f"Error extracting IPO from table: {e}")
    
    def extract_ipo_from_card(self, card):
        """Dynamically extract IPO data from card/div structure"""
        try:
            text = card.get()
            if any(keyword in text.lower() for keyword in ['ipo', 'initial public', 'offering']):
                yield self.parse_ipo_from_text(text)
        except Exception as e:
            self.logger.error(f"Error extracting IPO from card: {e}")
    
    def extract_market_movers_from_json_ld(self, data):
        """Extract market movers data from JSON-LD structured data"""
        try:
            if isinstance(data, dict):
                if 'marketMovers' in data or 'stocks' in data:
                    movers_data = data.get('marketMovers', data.get('stocks', {}))
                    if isinstance(movers_data, list):
                        for mover in movers_data:
                            yield self.parse_market_mover_item(mover)
                    elif isinstance(movers_data, dict):
                        yield self.parse_market_mover_item(movers_data)
        except Exception as e:
            self.logger.error(f"Error extracting market movers from JSON-LD: {e}")
    
    def extract_market_movers_from_script(self, script):
        """Extract market movers data from any script content"""
        try:
            json_patterns = re.findall(r'\{[^{}]*"market"[^{}]*\}', script)
            for pattern in json_patterns:
                try:
                    data = json.loads(pattern)
                    yield from self.extract_market_movers_from_json_ld(data)
                except json.JSONDecodeError:
                    continue
        except Exception as e:
            self.logger.error(f"Error extracting market movers from script: {e}")
    
    def extract_market_movers_from_table(self, table):
        """Dynamically extract market movers data from HTML table"""
        try:
            rows = table.xpath('.//tr')
            if len(rows) < 2:
                return
            
            headers = rows[0].xpath('.//th|.//td')
            header_texts = [h.get().strip().lower() for h in headers]
            
            symbol_idx = self.find_column_index(header_texts, ['symbol', 'ticker', 'stock'])
            company_idx = self.find_column_index(header_texts, ['company', 'name'])
            change_idx = self.find_column_index(header_texts, ['change', 'price change', '% change'])
            volume_idx = self.find_column_index(header_texts, ['volume', 'vol'])
            price_idx = self.find_column_index(header_texts, ['price', 'current price'])
            
            for row in rows[1:]:
                cells = row.xpath('.//td')
                if len(cells) >= max(filter(None, [symbol_idx, company_idx, change_idx, volume_idx, price_idx])):
                    yield self.build_market_mover_item(cells, symbol_idx, company_idx, change_idx, volume_idx, price_idx)
                    
        except Exception as e:
            self.logger.error(f"Error extracting market movers from table: {e}")
    
    def extract_market_movers_from_card(self, card):
        """Dynamically extract market movers data from card/div structure"""
        try:
            text = card.get()
            if any(keyword in text.lower() for keyword in ['market', 'stock', 'price', 'change']):
                yield self.parse_market_mover_from_text(text)
        except Exception as e:
            self.logger.error(f"Error extracting market movers from card: {e}")
    
    def find_column_index(self, headers, keywords):
        """Dynamically find column index based on keywords"""
        for i, header in enumerate(headers):
            if any(keyword in header for keyword in keywords):
                return i
        return None
    
    def parse_earnings_item(self, data):
        """Parse earnings data from any structure"""
        try:
            return {
                'type': 'earnings',
                'symbol': self.extract_text(data, ['symbol', 'ticker', 'stock']),
                'company_name': self.extract_text(data, ['company', 'name', 'companyName']),
                'earnings_date': self.extract_text(data, ['date', 'earningsDate', 'reportDate']),
                'eps_estimate': self.extract_number(data, ['epsEstimate', 'estimate', 'expected']),
                'eps_actual': self.extract_number(data, ['epsActual', 'actual', 'reported']),
                'revenue_estimate': self.extract_number(data, ['revenueEstimate', 'revenueExpected']),
                'revenue_actual': self.extract_number(data, ['revenueActual', 'revenueReported']),
                'stock_reaction': self.extract_number(data, ['stockReaction', 'change', 'priceChange']),
                'guidance': self.extract_text(data, ['guidance', 'outlook']),
                'source': 'yahoo_finance',
                'scraped_at': datetime.now().isoformat()
            }
        except Exception as e:
            self.logger.error(f"Error parsing earnings item: {e}")
            return None
    
    def parse_ipo_item(self, data):
        """Parse IPO data from any structure"""
        try:
            return {
                'type': 'ipo',
                'symbol': self.extract_text(data, ['symbol', 'ticker', 'stock']),
                'company_name': self.extract_text(data, ['company', 'name', 'companyName']),
                'ipo_date': self.extract_text(data, ['ipoDate', 'date', 'offeringDate']),
                'ipo_price': self.extract_number(data, ['ipoPrice', 'offeringPrice', 'price']),
                'current_price': self.extract_number(data, ['currentPrice', 'marketPrice']),
                'price_change': self.extract_number(data, ['priceChange', 'change', 'performance']),
                'volume_change': self.extract_number(data, ['volumeChange', 'volume']),
                'sector': self.extract_text(data, ['sector', 'industry']),
                'exchange': self.extract_text(data, ['exchange', 'market']),
                'market_cap': self.extract_number(data, ['marketCap', 'marketCap']),
                'status': self.extract_text(data, ['status', 'state']),
                'source': 'yahoo_finance',
                'scraped_at': datetime.now().isoformat()
            }
        except Exception as e:
            self.logger.error(f"Error parsing IPO item: {e}")
            return None
    
    def parse_market_mover_item(self, data):
        """Parse market mover data from any structure"""
        try:
            return {
                'type': 'market_mover',
                'symbol': self.extract_text(data, ['symbol', 'ticker', 'stock']),
                'company_name': self.extract_text(data, ['company', 'name', 'companyName']),
                'price_change': self.extract_number(data, ['priceChange', 'change', 'percentChange']),
                'volume_change': self.extract_number(data, ['volumeChange', 'volume']),
                'current_price': self.extract_number(data, ['currentPrice', 'price', 'lastPrice']),
                'volume': self.extract_number(data, ['volume', 'vol']),
                'market_cap': self.extract_number(data, ['marketCap', 'marketCap']),
                'reason': self.extract_text(data, ['reason', 'catalyst', 'news']),
                'source': 'yahoo_finance',
                'scraped_at': datetime.now().isoformat()
            }
        except Exception as e:
            self.logger.error(f"Error parsing market mover item: {e}")
            return None
    
    def extract_text(self, data, keys):
        """Extract text value from data using multiple possible keys"""
        if isinstance(data, dict):
            for key in keys:
                if key in data:
                    value = data[key]
                    if isinstance(value, str):
                        return value.strip()
                    elif value is not None:
                        return str(value).strip()
        return None
    
    def extract_number(self, data, keys):
        """Extract number value from data using multiple possible keys"""
        if isinstance(data, dict):
            for key in keys:
                if key in data:
                    value = data[key]
                    if isinstance(value, (int, float)):
                        return float(value)
                    elif isinstance(value, str):
                        # Remove currency symbols, commas, percentages
                        cleaned = re.sub(r'[$,%]', '', value).strip()
                        try:
                            return float(cleaned)
                        except ValueError:
                            continue
        return None
    
    def build_earnings_item(self, cells, symbol_idx, company_idx, date_idx, eps_idx, revenue_idx):
        """Build earnings item from table cells"""
        try:
            return {
                'type': 'earnings',
                'symbol': cells[symbol_idx].get().strip() if symbol_idx is not None else None,
                'company_name': cells[company_idx].get().strip() if company_idx is not None else None,
                'earnings_date': cells[date_idx].get().strip() if date_idx is not None else None,
                'eps_estimate': self.parse_cell_number(cells[eps_idx]) if eps_idx is not None else None,
                'eps_actual': None,  # Would need additional parsing
                'revenue_estimate': self.parse_cell_number(cells[revenue_idx]) if revenue_idx is not None else None,
                'revenue_actual': None,  # Would need additional parsing
                'stock_reaction': None,
                'guidance': None,
                'source': 'yahoo_finance',
                'scraped_at': datetime.now().isoformat()
            }
        except Exception as e:
            self.logger.error(f"Error building earnings item: {e}")
            return None
    
    def build_ipo_item(self, cells, symbol_idx, company_idx, date_idx, price_idx):
        """Build IPO item from table cells"""
        try:
            return {
                'type': 'ipo',
                'symbol': cells[symbol_idx].get().strip() if symbol_idx is not None else None,
                'company_name': cells[company_idx].get().strip() if company_idx is not None else None,
                'ipo_date': cells[date_idx].get().strip() if date_idx is not None else None,
                'ipo_price': self.parse_cell_number(cells[price_idx]) if price_idx is not None else None,
                'current_price': None,
                'price_change': None,
                'volume_change': None,
                'sector': None,
                'exchange': None,
                'market_cap': None,
                'status': None,
                'source': 'yahoo_finance',
                'scraped_at': datetime.now().isoformat()
            }
        except Exception as e:
            self.logger.error(f"Error building IPO item: {e}")
            return None
    
    def build_market_mover_item(self, cells, symbol_idx, company_idx, change_idx, volume_idx, price_idx):
        """Build market mover item from table cells"""
        try:
            return {
                'type': 'market_mover',
                'symbol': cells[symbol_idx].get().strip() if symbol_idx is not None else None,
                'company_name': cells[company_idx].get().strip() if company_idx is not None else None,
                'price_change': self.parse_cell_number(cells[change_idx]) if change_idx is not None else None,
                'volume_change': self.parse_cell_number(cells[volume_idx]) if volume_idx is not None else None,
                'current_price': self.parse_cell_number(cells[price_idx]) if price_idx is not None else None,
                'volume': None,
                'market_cap': None,
                'reason': None,
                'source': 'yahoo_finance',
                'scraped_at': datetime.now().isoformat()
            }
        except Exception as e:
            self.logger.error(f"Error building market mover item: {e}")
            return None
    
    def parse_cell_number(self, cell):
        """Parse number from table cell"""
        try:
            text = cell.get().strip()
            if text:
                # Remove currency symbols, commas, percentages
                cleaned = re.sub(r'[$,%]', '', text).strip()
                return float(cleaned)
        except (ValueError, AttributeError):
            pass
        return None
    
    def parse_earnings_from_text(self, text):
        """Parse earnings data from text using regex patterns"""
        # This would use regex patterns to extract earnings data from text
        # Implementation would depend on specific text patterns found
        pass
    
    def parse_ipo_from_text(self, text):
        """Parse IPO data from text using regex patterns"""
        # This would use regex patterns to extract IPO data from text
        # Implementation would depend on specific text patterns found
        pass
    
    def parse_market_mover_from_text(self, text):
        """Parse market mover data from text using regex patterns"""
        # This would use regex patterns to extract market mover data from text
        # Implementation would depend on specific text patterns found
        pass 