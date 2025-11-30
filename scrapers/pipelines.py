import json
import sqlite3
from datetime import datetime
import redis
from itemadapter import ItemAdapter

class JsonWriterPipeline:
    def open_spider(self, spider):
        self.file = open('scraped_data.json', 'w')
        self.file.write('[\n')
        self.first_item = True

    def close_spider(self, spider):
        self.file.write('\n]')
        self.file.close()

    def process_item(self, item, spider):
        if not self.first_item:
            self.file.write(',\n')
        line = json.dumps(ItemAdapter(item).asdict())
        self.file.write(line)
        self.first_item = False
        return item

class DatabasePipeline:
    def __init__(self):
        self.conn = None
        self.cursor = None

    def open_spider(self, spider):
        self.conn = sqlite3.connect('finance_data.db')
        self.cursor = self.conn.cursor()
        self.create_tables()

    def close_spider(self, spider):
        if self.conn:
            self.conn.close()

    def create_tables(self):
        """Create database tables if they don't exist"""
        self.cursor.execute('''
            CREATE TABLE IF NOT EXISTS earnings (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                symbol TEXT,
                company_name TEXT,
                earnings_date TEXT,
                eps_estimate REAL,
                eps_actual REAL,
                revenue_estimate REAL,
                revenue_actual REAL,
                stock_reaction REAL,
                guidance TEXT,
                source TEXT,
                scraped_at TEXT
            )
        ''')

        self.cursor.execute('''
            CREATE TABLE IF NOT EXISTS ipos (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                symbol TEXT,
                company_name TEXT,
                ipo_date TEXT,
                ipo_price REAL,
                current_price REAL,
                price_change REAL,
                volume_change REAL,
                sector TEXT,
                exchange TEXT,
                market_cap REAL,
                status TEXT,
                source TEXT,
                scraped_at TEXT
            )
        ''')

        self.cursor.execute('''
            CREATE TABLE IF NOT EXISTS market_movers (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                symbol TEXT,
                company_name TEXT,
                price_change REAL,
                volume_change REAL,
                current_price REAL,
                volume REAL,
                market_cap REAL,
                reason TEXT,
                source TEXT,
                scraped_at TEXT
            )
        ''')

        self.conn.commit()

    def process_item(self, item, spider):
        adapter = ItemAdapter(item)
        item_type = adapter.get('type')

        if item_type == 'earnings':
            self.insert_earnings(adapter)
        elif item_type == 'ipo':
            self.insert_ipo(adapter)
        elif item_type == 'market_mover':
            self.insert_market_mover(adapter)

        return item

    def insert_earnings(self, adapter):
        """Insert earnings data into database"""
        try:
            self.cursor.execute('''
                INSERT INTO earnings (
                    symbol, company_name, earnings_date, eps_estimate, eps_actual,
                    revenue_estimate, revenue_actual, stock_reaction, guidance, source, scraped_at
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            ''', (
                adapter.get('symbol'),
                adapter.get('company_name'),
                adapter.get('earnings_date'),
                self.parse_number(adapter.get('eps_estimate')),
                self.parse_number(adapter.get('eps_actual')),
                self.parse_number(adapter.get('revenue_estimate')),
                self.parse_number(adapter.get('revenue_actual')),
                self.parse_number(adapter.get('stock_reaction')),
                adapter.get('guidance'),
                adapter.get('source'),
                adapter.get('scraped_at')
            ))
            self.conn.commit()
        except Exception as e:
            print(f"Error inserting earnings: {e}")

    def insert_ipo(self, adapter):
        """Insert IPO data into database"""
        try:
            self.cursor.execute('''
                INSERT INTO ipos (
                    symbol, company_name, ipo_date, ipo_price, current_price,
                    price_change, volume_change, sector, exchange, market_cap, status, source, scraped_at
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            ''', (
                adapter.get('symbol'),
                adapter.get('company_name'),
                adapter.get('ipo_date'),
                self.parse_number(adapter.get('ipo_price')),
                self.parse_number(adapter.get('current_price')),
                self.parse_number(adapter.get('price_change')),
                self.parse_number(adapter.get('volume_change')),
                adapter.get('sector'),
                adapter.get('exchange'),
                self.parse_number(adapter.get('market_cap')),
                adapter.get('status'),
                adapter.get('source'),
                adapter.get('scraped_at')
            ))
            self.conn.commit()
        except Exception as e:
            print(f"Error inserting IPO: {e}")

    def insert_market_mover(self, adapter):
        """Insert market mover data into database"""
        try:
            self.cursor.execute('''
                INSERT INTO market_movers (
                    symbol, company_name, price_change, volume_change,
                    current_price, volume, market_cap, reason, source, scraped_at
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            ''', (
                adapter.get('symbol'),
                adapter.get('company_name'),
                self.parse_number(adapter.get('price_change')),
                self.parse_number(adapter.get('volume_change')),
                self.parse_number(adapter.get('current_price')),
                self.parse_number(adapter.get('volume')),
                self.parse_number(adapter.get('market_cap')),
                adapter.get('reason'),
                adapter.get('source'),
                adapter.get('scraped_at')
            ))
            self.conn.commit()
        except Exception as e:
            print(f"Error inserting market mover: {e}")

    def parse_number(self, value):
        """Parse string numbers to float, handling currency symbols and percentages"""
        if not value:
            return None
        
        try:
            # Remove currency symbols, commas, and percentage signs
            cleaned = str(value).replace('$', '').replace(',', '').replace('%', '').strip()
            return float(cleaned)
        except (ValueError, TypeError):
            return None

class RedisCachePipeline:
    def __init__(self):
        self.redis_client = redis.Redis(host='localhost', port=6379, db=0)

    def process_item(self, item, spider):
        adapter = ItemAdapter(item)
        item_type = adapter.get('type')
        symbol = adapter.get('symbol')

        if symbol:
            # Cache item by symbol and type
            cache_key = f"{item_type}:{symbol}:{adapter.get('source')}"
            cache_data = {
                'data': adapter.asdict(),
                'timestamp': datetime.now().isoformat()
            }
            
            # Cache for 1 hour
            self.redis_client.setex(
                cache_key,
                3600,  # 1 hour
                json.dumps(cache_data)
            )

        return item 