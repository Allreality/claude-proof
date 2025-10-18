# Trading Bot Startup Documentation
*Source: notes.txt - Verified 10/4/2025 and 9/19/2025*

## 📁 File Structure & Paths

### Main Directory
### Key Files
- **Metrics Server**: `/mnt/c/projects/akil-studio/tx-hub/Trading-bot/metrics_server.py`
- **Trading Bot**: `/mnt/c/projects/akil-studio/tx-hub/Trading-bot/advanced_trading_bot.py`
- **Web Dashboard**: `/mnt/c/projects/akil-studio/tx-hub/Trading-bot/web-dashboard/`
- **Virtual Environment**: `/mnt/c/projects/akil-studio/tx-hub/Trading-bot/trading-bot-env/`

## System Architecture
- **Metrics Server**: Python-based InfluxDB metrics collector (Port 8086)
- **Web Dashboard**: Simple HTTP server (Port 8080)
- **Trading Bot**: Main Solana trading algorithm

## Environment Variables (Required)
```bash
export INFLUX_URL="http://localhost:8086"
export INFLUXDB_TOKEN="Is8ElAktOvtgshl1KlGD9CQ-bfdfm4mQSsZLn_XjxnGUbp3MRuD7P5Pu7vavEMK7mS4Ts2QnHEA1It7Gc2LgeA=="
export INFLUX_ORG="Total_Reality_Global"
export INFLUX_BUCKET="trading_metrics"
