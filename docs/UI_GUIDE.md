# User Interface Guide
**Complete guide to all three interfaces**

## 🎨 Overview

Your trading bot system has three distinct user interfaces, each serving a specific purpose:

1. **Landing Page** - Marketing & showcase
2. **Trading Dashboard** - Portfolio management
3. **Control Panel** - System control

---

## 1️⃣ Landing Page

### Access
**URL**: http://localhost:8080/static/trading-bot.html  
**File**: `/mnt/c/projects/akil-studio/tx-hub/Trading-bot/static/trading-bot.html`

### Purpose
A stunning, animated landing page designed to:
- Showcase your bot's capabilities
- Impress stakeholders/investors
- Provide quick stats overview
- Serve as entry point to other interfaces

### Features

#### Hero Section
- Animated robot emoji logo 🤖
- Live SOL price ticker
- Real-time wallet balance
- Active strategy count
- 24/7 monitoring status

#### Feature Cards (6 total)
1. **Real-Time Analytics** - Live data tracking
2. **Smart Strategies** - AI-powered trading
3. **Secure & Transparent** - Blockchain security
4. **Lightning Fast** - Solana speed
5. **Advanced Monitoring** - Complete metrics
6. **Beautiful Dashboard** - Modern UI

#### Live Market Data Section
- Current SOL price (updates every 30s)
- 24h price change percentage
- Portfolio value in USD
- Data source indicator

#### Active Strategies Section
- Momentum Strategy details
- Mean Reversion Strategy details
- SMA Crossover Strategy details
- Tags showing indicators used

### Design Elements
- Dark gradient background (#0f172a → #334155)
- Floating animated orbs
- Smooth scroll animations
- Hover effects on all cards
- Responsive layout (mobile-friendly)
- Gradient text effects
- Pulse animations

### Call-to-Action Buttons
- **"📊 Open Dashboard"** → Links to trading dashboard
- **"⚙️ Control Panel"** → Links to control panel

### Auto-Update
The page fetches live data from `/api/dashboard_data` every 30 seconds automatically.

---

## 2️⃣ Trading Dashboard

### Access
**URL**: http://localhost:8080/static/index.html  
**File**: `/mnt/c/projects/akil-studio/tx-hub/Trading-bot/static/index.html`

### Purpose
Detailed portfolio and trade management interface for:
- Viewing current positions
- Monitoring trade history
- Checking P&L
- Analyzing strategy performance

### Layout

#### Header
- Title: "Solana Trading Dashboard"
- Subtitle: "Real-time portfolio monitoring and trade execution"

#### Market Overview Cards
1. **SOL Price** - Current market price
2. **Portfolio Value** - Total USD value
3. **Total Trades** - Number of executed trades
4. **Win Rate** - Percentage of successful trades

#### Position Cards (Dynamic)
- Individual cards for each position (SOL, USDC, etc.)
- Shows amount held
- Current value in USD
- P&L (profit/loss) with percentage
- Color-coded (green for profit, red for loss)

#### Recent Trades Table
Columns:
- Time (timestamp)
- Symbol (SOL, USDC, etc.)
- Side (BUY/SELL badge)
- Amount
- Price
- Value (USD)
- Strategy used
- Status

#### Footer
- Last updated timestamp
- Manual refresh button (🔄)

### Features
- Auto-refresh every 30 seconds
- Manual refresh button
- Color-coded P&L indicators
- Responsive grid layout
- Dark theme
- Real-time data from API

### Data Source
Fetches from: `http://localhost:8080/api/dashboard_data`

---

## 3️⃣ Control Panel

### Access
**URL**: http://localhost:5002  
**Location**: `/mnt/c/projects/project-hub/trading-dashboard/`

### Purpose
System management and monitoring interface for:
- Starting/stopping services
- Monitoring system status
- Viewing live metrics
- Accessing documentation

### Sections

#### 💰 Live Market Data
6 metric cards showing:
1. **SOL Price** - Live price from Pyth Network
2. **Wallet Balance** - Real SOL balance
3. **Portfolio Value** - Total USD value
4. **Total P&L** - Profit/loss (color-coded)
5. **Win Rate** - Trade success percentage
6. **Total Trades** - Count of all trades

**Data Source Indicator**: Shows which API is being used (Pyth Network, CoinGecko, or Kraken)

**Update Frequency**: Every 5 seconds

#### System Status
Real-time service monitoring:
- **Dashboard Server** - Port 8080 status (🟢 Running / 🔴 Stopped)
- **Trading Bot** - Background process status

Color indicators:
- 🟢 Green = Running
- 🔴 Red = Stopped
- 🔵 Blue = Checking

#### Controls
Interactive buttons:
- **▶️ Start Trading System** - Launches both services
  - Starts dashboard server on port 8080
  - Starts trading bot monitoring
  - Takes ~10 seconds to initialize
  
- **⏹️ Stop Trading System** - Stops all services
  - Confirmation dialog before stopping
  - Graceful shutdown
  - Kills processes on ports 8080

- **📊 Open Full Dashboard** - Links to trading dashboard
  - Opens in new tab
  - Only visible when services are running

#### Configuration
Displays current settings:
- Wallet address (truncated for security)
- Dashboard port (8080)
- InfluxDB connection
- Price sources priority order

#### Manual Startup Reference
Code block showing verified manual startup commands for:
- Setting environment variables
- Activating virtual environment
- Starting dashboard server

### Features
- Real-time status updates (every 10 seconds)
- Automatic price updates (every 5 seconds)
- Notification popups for actions
- Color-coded status indicators
- Dark gradient theme
- Responsive design
- One-click service management

### Technical Details
- **Backend**: Flask (Python)
- **Port**: 5002
- **Auto-refresh**: Status every 10s, Data every 5s
- **API Endpoints**:
  - `/api/status` - System health
  - `/api/start` - Start services
  - `/api/stop` - Stop services
  - `/api/live-data` - Market data

---

## 🎯 Navigation Flow

### Typical User Journey
