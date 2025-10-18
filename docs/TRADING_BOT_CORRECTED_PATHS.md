# Trading Bot - CORRECTED File Paths
*Updated: October 13, 2025*
*Verified by actual directory inspection*

## ✅ CORRECT Virtual Environment
## ❌ INCORRECT Paths Found in Notes
- `~/trading-bot` - Does not exist
- `trading-bot-env` - Does not exist (your notes had a typo)

## 📁 Actual File Structure

### Main Directory
/mnt/c/projects/akil-studio/tx-hub/Trading-bot/
### Virtual Environments Found (3 total - cleanup needed!)
1. **`venv/`** ✅ **ACTIVE** - Most complete, has all packages
2. **`trading_bot_env/`** ⚠️ **UNUSED** - Partial packages, can delete
3. **`.venv/`** ⚠️ **UNUSED** - Minimal packages, can delete

## 🔧 Corrected Startup Commands

```bash
cd /mnt/c/projects/akil-studio/tx-hub/Trading-bot
source venv/bin/activate

export INFLUX_URL="http://localhost:8086"
export INFLUXDB_TOKEN="Is8ElAktOvtgshl1KlGD9CQ-bfdfm4mQSsZLn_XjxnGUbp3MRuD7P5Pu7vavEMK7mS4Ts2QnHEA1It7Gc2LgeA=="
export INFLUX_ORG="Total_Reality_Global"
export INFLUX_BUCKET="trading_metrics"

python metrics_server.py
