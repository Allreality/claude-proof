# Complete Trading Bot Setup Guide
**Last Updated**: October 13, 2025  
**Status**: ✅ FULLY WORKING  
**Version**: 1.0

---

## 🎯 What We Built

A complete Solana trading bot system with:
- ✅ Real-time SOL price tracking (Pyth Network)
- ✅ Live wallet balance monitoring (Solana RPC)
- ✅ Modern web dashboards (dark theme)
- ✅ Control panel for easy management
- ✅ 3 active trading strategies
- ✅ Automated startup/shutdown

---

## 📁 Project Structure
/mnt/c/projects/
│
├── project-hub/
│   └── trading-dashboard/              # Control Panel (Port 5002)
│       ├── app.py                      # Flask backend
│       ├── templates/index.html        # Frontend UI
│       ├── static/
│       │   ├── css/style.css          # Dark theme styling
│       │   └── js/main.js             # Interactive controls
│       └── docs/                       # This documentation
│
└── akil-studio/tx-hub/Trading-bot/    # Main Trading Bot
├── venv/                           # ✅ CORRECT virtual environment
├── dashboard_server.py             # Backend API server (Port 8080)
├── trading_bot.py                  # Trading logic
├── static/
│   └── index.html                  # Trading dashboard UI
├── api/
│   └── dashboard_data.py           # Data endpoints
├── strategies/                     # Trading strategies
│   ├── momentum_strategy.py        # ✅ Active
│   ├── mean_reversion_strategy.py  # ✅ Active
│   └── sma_strategy.py            # ✅ Active
├── portfolio/
│   └── positions.json              # Real portfolio data
├── trades/
│   └── recent_trades.json          # Trade history
└── config/
└── active_strategies.json      # Strategy configuration

---

## 🚀 Startup Procedures

### Method 1: Automated (Recommended)

#### Start Control Panel
```bash
cd /mnt/c/projects/project-hub/trading-dashboard
python app.py

Access: http://localhost:5002
Use Control Panel

Click "▶️ Start Trading System"
Wait 10 seconds for services to initialize
Click "📊 Open Full Dashboard"

Method 2: Manual Startup
Terminal 1: Dashboard Server

cd /mnt/c/projects/akil-studio/tx-hub/Trading-bot
source venv/bin/activate

export INFLUX_URL="http://localhost:8086"
export INFLUXDB_TOKEN="Is8ElAktOvtgshl1KlGD9CQ-bfdfm4mQSsZLn_XjxnGUbp3MRuD7P5Pu7vavEMK7mS4Ts2QnHEA1It7Gc2LgeA=="
export INFLUX_ORG="Total_Reality_Global"
export INFLUX_BUCKET="trading_metrics"

python dashboard_server.py --wallet 3AxdPSVxZWFRJUhw3BbRA69vbMvVCQBeSz3Fv7hiQDnf --port 8080

Terminal 2: Trading Bot (Optional)
cd /mnt/c/projects/akil-studio/tx-hub/Trading-bot
source venv/bin/activate

export INFLUX_URL="http://localhost:8086"
export INFLUXDB_TOKEN="Is8ElAktOvtgshl1KlGD9CQ-bfdfm4mQSsZLn_XjxnGUbp3MRuD7P5Pu7vavEMK7mS4Ts2QnHEA1It7Gc2LgeA=="
export INFLUX_ORG="Total_Reality_Global"
export INFLUX_BUCKET="trading_metrics"

python trading_bot.py

🌐 Access URLs
ServiceURLPurposeControl Panelhttp://localhost:5002Start/stop services, monitor statusTrading Dashboardhttp://localhost:8080/static/index.htmlView portfolio, trades, strategiesAPI - Dashboard Datahttp://localhost:8080/api/dashboard_dataJSON data endpointAPI - Statushttp://localhost:5002/api/statusSystem health check

💼 Wallet Configuration
Wallet Address: 3AxdPSVxZWFRJUhw3BbRA69vbMvVCQBeSz3Fv7hiQDnf
Current Holdings (as of Oct 13, 2025):

SOL Balance: 0.0914 SOL
Portfolio Value: ~$18.88 USD
Network: Solana Mainnet

📊 Data Sources
Price Data (Priority Order)

Pyth Network (On-chain Oracle) - Primary ✅
CoinGecko (Aggregator) - Fallback 1
Kraken (Exchange API) - Fallback 2

Current Source: Pyth Network
Why: User preference for decentralized, on-chain data
Blocked/Unavailable Sources

❌ Jupiter: DNS resolution issues in your region
❌ Binance: Geo-restricted in your location
❌ Birdeye: No response

🎯 Active Trading Strategies
1. Momentum Strategy

File: strategies/momentum_strategy.py
Indicators: RSI + momentum oscillators
Use Case: Trend-following in strong directional markets

2. Mean Reversion Strategy

File: strategies/mean_reversion_strategy.py
Indicators: Bollinger Bands + Z-score analysis
Use Case: Buy dips, sell rallies in ranging markets

3. SMA Strategy

File: strategies/sma_strategy.py
Indicators: Simple Moving Average crossovers
Use Case: Golden cross (buy) / Death cross (sell) signals

Configuration: /mnt/c/projects/akil-studio/tx-hub/Trading-bot/config/active_strategies.json

🔧 Environment Variables

# InfluxDB Configuration (for metrics storage)
export INFLUX_URL="http://localhost:8086"
export INFLUXDB_TOKEN="Is8ElAktOvtgshl1KlGD9CQ-bfdfm4mQSsZLn_XjxnGUbp3MRuD7P5Pu7vavEMK7mS4Ts2QnHEA1It7Gc2LgeA=="
export INFLUX_ORG="Total_Reality_Global"
export INFLUX_BUCKET="trading_metrics"

⚠️ CRITICAL: What NOT to Use
Deprecated/Incorrect Paths
❌ ~/trading-bot/ - Does not exist
❌ trading-bot-env/ - Wrong name (correct: venv/)
❌ metrics_server.py - File doesn't exist
❌ advanced_trading_bot.py - File doesn't exist
❌ Port 3000 - Not used (correct: 8080)
❌ Port 5173 - Not used (correct: 8080)
Correct Paths
✅ /mnt/c/projects/akil-studio/tx-hub/Trading-bot/
✅ venv/ (virtual environment)
✅ dashboard_server.py (backend server)
✅ trading_bot.py (main bot)
✅ Port 8080 (dashboard)
✅ Port 5002 (control panel)

📝 Data Files
Portfolio Data
Location: portfolio/positions.json
Current Content:
{
  "total_value_usd": 18.88,
  "positions": [
    {
      "symbol": "SOL",
      "amount": 0.0914,
      "value_usd": 18.88,
      "avg_cost": 180.00
    }
  ],
  "last_updated": 1760380000
}
Trades Data
Location: trades/recent_trades.json
Status: Empty (real trades will be added by bot)
Strategy Configuration
Location: config/active_strategies.json
{
  "strategies": [
    "momentum",
    "mean_reversion",
    "sma"
  ],
  "descriptions": {
    "momentum": "RSI + momentum indicators",
    "mean_reversion": "Bollinger Bands + Z-score analysis",
    "sma": "Simple moving average crossover"
  },
  "last_updated": "2025-10-13"
}
🎨 UI Features
Control Panel (Port 5002)

✅ Dark gradient theme
✅ Real-time SOL price updates (every 5 seconds)
✅ Live wallet balance monitoring
✅ Portfolio value calculation
✅ Service status indicators
✅ One-click start/stop controls
✅ Price source indicator

Trading Dashboard (Port 8080)

✅ Modern dark theme matching control panel
✅ Real-time market data cards
✅ Position breakdowns with P&L
✅ Recent trades table
✅ Win rate calculations
✅ Auto-refresh every 30 seconds
✅ Manual refresh button

🔍 Verification Commands
Check Services Running
# Check control panel
curl http://localhost:5002/api/status

# Check dashboard server
curl http://localhost:8080/api/dashboard_data

# Check processes
ps aux | grep dashboard_server
ps aux | grep trading_bot

Check Ports
lsof -i :5002  # Control panel
lsof -i :8080  # Dashboard server

Check Virtual Environment
cd /mnt/c/projects/akil-studio/tx-hub/Trading-bot
source venv/bin/activate
pip list | grep -E "solana|flask|aiohttp"

Test Price APIs

# Test Pyth (should work)
curl "https://hermes.pyth.network/api/latest_price_feeds?ids[]=0xef0d8b6fda2ceba41da15d4095d1da392a0d2f8ed0c6c7bc0f4cfac8c280b56d"

# Test CoinGecko (should work)
curl "https://api.coingecko.com/api/v3/simple/price?ids=solana&vs_currencies=usd"

# Test Kraken (should work)
curl "https://api.kraken.com/0/public/Ticker?pair=SOLUSD"

🐛 Troubleshooting
Issue: Control Panel Won't Start
Solution:
cd /mnt/c/projects/project-hub/trading-dashboard
pip install flask requests psutil solana
python app.py

Issue: Dashboard Server Shows Mock Data
Problem: Missing or incorrect data files
Solution:
cd /mnt/c/projects/akil-studio/tx-hub/Trading-bot

# Verify files exist
ls -la portfolio/positions.json
ls -la trades/recent_trades.json
ls -la config/active_strategies.json

# If missing, recreate them using the templates above

Issue: No SOL Price Showing
Problem: All price APIs might be failing
Solution: Check terminal output for API errors
# You'll see:
🔍 Trying Pyth Network...
✅ Pyth price: $205.XX

# Or:
⚠️ Pyth error: ...
🔍 Trying CoinGecko...
✅ CoinGecko price: $205.XX

Issue: Wallet Balance Shows 0.00
Problem: Solana RPC connection issue
Solution: Check network connectivity

curl https://api.mainnet-beta.solana.com -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","id":1,"method":"getHealth"}'

Issue: Can't Stop Services
Problem: Services started manually, not tracked by control panel
Solution:

Find terminal running dashboard_server.py
Press Ctrl+C to stop
Restart via control panel

📈 Future Enhancements
Planned Features

 Real-time trade execution
 InfluxDB metrics integration
 Strategy backtesting interface
 Email/SMS alerts for trades
 Multi-wallet support
 Mobile-responsive dashboard
 Historical P&L charts
 Risk management controls

Optional Integrations

 Jupiter swap integration (when DNS issues resolved)
 Telegram bot notifications
 Discord webhook alerts
 CSV trade export
 Tax reporting tools

🔐 Security Notes
Important

🔒 Never commit .env files with tokens
🔒 Keep wallet private keys secure (not stored in code)
🔒 InfluxDB token is sensitive - rotate regularly
🔒 Control panel runs locally only (no external access)

Backup Recommendations

# Backup configuration
cp .env .env.backup
cp portfolio/positions.json portfolio/positions.backup.json
cp config/active_strategies.json config/active_strategies.backup.json

# Backup trades history
cp trades/recent_trades.json trades/backup_$(date +%Y%m%d).json

📞 Quick Reference
Start Everything
# Terminal 1: Control Panel
cd /mnt/c/projects/project-hub/trading-dashboard && python app.py

# Then use browser: http://localhost:5002
# Click "Start Trading System"

Stop Everything
# Use control panel: http://localhost:5002
# Click "Stop Trading System"

# Or manual:
pkill -f dashboard_server.py
pkill -f trading_bot.py

View Logs
# Dashboard server logs (check terminal)
# Trading bot logs
tail -f /mnt/c/projects/akil-studio/tx-hub/Trading-bot/trading_bot.log

✅ Success Criteria
You know everything is working when:

✅ Control panel shows real SOL price (~$205)
✅ Wallet balance shows 0.0914 SOL
✅ Portfolio value shows ~$18.88
✅ Dashboard server status: Running (green)
✅ Trading dashboard displays position cards
✅ No mock data (50 SOL, 1000 USDC) visible
✅ 3 Active Strategies displayed
✅ Price source shows "Pyth Network"

📚 Related Documentation

/mnt/c/projects/project-hub/docs/VERIFIED_WORKING_SETUP.md - Verified components
/mnt/c/projects/akil-studio/tx-hub/Trading-bot/strategies/notes.txt - Strategy details
/mnt/c/projects/akil-studio/tx-hub/Trading-bot/README.md - Original project docs

🎓 What We Fixed Today
Path Corrections

❌ Old: ~/trading-bot/ → ✅ Correct: /mnt/c/projects/akil-studio/tx-hub/Trading-bot/
❌ Old: trading-bot-env → ✅ Correct: venv/
❌ Old: metrics_server.py → ✅ Correct: dashboard_server.py

API Integrations

✅ Connected to Pyth Network for real SOL price
✅ Connected to Solana RPC for wallet balance
✅ Fixed price API fallback chain (Pyth → CoinGecko → Kraken)
✅ Resolved DNS issues with Jupiter (workaround with alternatives)
✅ Handled Binance geo-restriction

Data Accuracy

✅ Replaced mock portfolio (50 SOL) with real data (0.0914 SOL)
✅ Updated portfolio value ($10,000 → $18.88)
✅ Fixed active strategies count (2 → 3)
✅ Removed fake trade history
✅ Created proper data file structure

UI Improvements

✅ Implemented dark theme across all dashboards
✅ Added real-time price updates
✅ Created interactive control panel
✅ Added service status indicators
✅ Improved button visibility logic
✅ Added price source indicator

📅 Maintenance Schedule
Daily

 Check dashboard for any errors
 Verify wallet balance matches blockchain
 Review any executed trades

Weekly

 Review strategy performance
 Check log files for errors
 Backup trade history

Monthly

 Update dependencies: pip install --upgrade -r requirements.txt
 Rotate InfluxDB tokens
 Archive old trade data
 Review and optimize strategies

Document Created: October 13, 2025
Last Verified: October 13, 2025 14 UTC
Status: ✅ Production Ready
Maintainer: Akil (MetaverseViewer)

---

## 🎨 Landing Page

### Accessing the Landing Page
**URL**: http://localhost:8080/static/trading-bot.html

**Features**:
- 🚀 Animated hero section with live stats
- 📊 Real-time SOL price updates
- 🎯 Feature showcase with hover effects
- 📈 Active strategies display
- ✨ Smooth scroll animations
- 🌙 Dark theme matching control panel
- 📱 Fully responsive design

**Purpose**: 
Professional landing page to showcase your trading bot's capabilities. Perfect for:
- Demonstrating features to stakeholders
- Monitoring at a glance
- Quick access to dashboards
- Impressive visual presentation

**Auto-Updates**:
The landing page automatically fetches live data from `/api/dashboard_data` every 30 seconds, showing:
- Current SOL price
- 24h price change
- Portfolio value
- Active strategies

### Landing Page vs Dashboard vs Control Panel

| Page | URL | Purpose |
|------|-----|---------|
| **Landing Page** | http://localhost:8080/static/trading-bot.html | Marketing/showcase |
| **Trading Dashboard** | http://localhost:8080/static/index.html | Detailed portfolio view |
| **Control Panel** | http://localhost:5002 | System management |


---

## 🎨 Landing Page

### Accessing the Landing Page
**URL**: http://localhost:8080/static/trading-bot.html

**Features**:
- 🚀 Animated hero section with live stats
- 📊 Real-time SOL price updates
- 🎯 Feature showcase with hover effects
- 📈 Active strategies display
- ✨ Smooth scroll animations
- 🌙 Dark theme matching control panel
- 📱 Fully responsive design

**Purpose**: 
Professional landing page to showcase your trading bot's capabilities. Perfect for:
- Demonstrating features to stakeholders
- Monitoring at a glance
- Quick access to dashboards
- Impressive visual presentation

**Auto-Updates**:
The landing page automatically fetches live data from `/api/dashboard_data` every 30 seconds, showing:
- Current SOL price
- 24h price change
- Portfolio value
- Active strategies

### Landing Page vs Dashboard vs Control Panel

| Page | URL | Purpose |
|------|-----|---------|
| **Landing Page** | http://localhost:8080/static/trading-bot.html | Marketing/showcase |
| **Trading Dashboard** | http://localhost:8080/static/index.html | Detailed portfolio view |
| **Control Panel** | http://localhost:5002 | System management |

