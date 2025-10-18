# Claude Proof System v1.0

> A protection system to prevent AI assistants from accidentally overwriting working projects

## 🎯 The Problem This Solves

When working with AI coding assistants like Claude, there's a risk of accidentally overwriting hours of work. The Claude Proof System creates timestamped archives of working projects and enforces a "copy-from-archive" workflow for continued development.

## 🔒 Core Concept

**Working projects go to the archive. To continue working, copy from archive and make version edits.**

This ensures you always have a protected snapshot before making changes.

## ⚡ Quick Start

```bash
# Protect a working project
./claude-proof/protect.sh protect "/path/to/project" "Description of work"

# List all protected projects
./claude-proof/protect.sh list

# Verify protection status
./claude-proof/protect.sh verify "/path/to/project"

📁 Directory Structure
claude-proof/
├── protect.sh                # Main protection script
├── protected_items.txt       # Protection registry
├── logs/                     # Protection activity logs
├── docs/                     # Documentation
│   ├── GETTING_STARTED.md
│   └── CHEAT_SHEET.md
└── scripts/                  # Utility scripts
    └── startup.sh

🛠️ Features
✅ Currently Implemented (v1.0)

Timestamped Archiving: Creates dated snapshots of projects
Protection Registry: Tracks all protected items
Verification System: Check protection status
Activity Logging: Records all protection events
List Protected Items: View all protected projects at a glance

🚀 Planned Features (v2.0)

Versioning System: Semantic versioning (v1.0, v1.1, v2.0)
Restore Command: Easy restoration from archive
Copy-for-Continue: Automated workflow to resume work
Diff Tool: Compare current vs archived versions
Auto-protect: Git hook integration
Web Dashboard: Visual project management

🔧 Installation
# Clone the repository
git clone https://github.com/allreality/claude-proof.git

# Navigate to your projects directory
cd /path/to/your/projects

# Copy claude-proof directory here
cp -r /path/to/cloned/claude-proof ./

# Make scripts executable
chmod +x claude-proof/protect.sh
chmod +x scripts/*.sh

# Run quick setup
./scripts/quick-setup.sh

💡 Usage Examples
Protect a Project After 10 Hours of Work
./claude-proof/protect.sh protect \
  "/path/to/my-app" \
  "Initial working version - 10 hours of development"

Check What's Protected
./claude-proof/protect.sh list

./claude-proof/protect.sh list

Output:
=== Claude Proof Protected Items ===

📁 /mnt/c/projects/liquidity-dashboard
   Description: Dashboard with working charts
   Protected: Mon Oct 16 08:30:00 PDT 2024
   Archive: liquidity-dashboard_20241016_083000

Verify Before Making Changes
./claude-proof/protect.sh verify "/path/to/my-app"

🎯 Workflow

Work on Project - Develop normally in your projects directory
Protect When Stable - Archive working versions before major changes
Verify Protection - Check that important work is protected
Continue Safely - Make changes knowing you have backups

🏗️ Architecture
Protection Process

Archive Creation: Project copied to archive with timestamp
Registry Update: Entry added to protected_items.txt
Log Entry: Activity logged to logs/protection_log.txt
Verification: Archive integrity checked

File Naming Convention
Archives use timestamp format: projectname_YYYYMMDD_HHMMSS
Example: liquidity-dashboard_20241016_083000

📖 Documentation

Getting Started Guide - Complete setup and usage
Cheat Sheet - Quick command reference
Architecture - System design details
Contributing - How to contribute
Changelog - Version history

🤝 Contributing
Contributions welcome! See CONTRIBUTING.md for guidelines.
Priority Features for v2.0

Semantic versioning system
Restore command
Continue workflow automation
Diff tool
Git integration

📊 Project Status

Version: 1.0.0
Status: Production Ready (Core Features)
License: MIT
Created: October 2024

🐛 Known Issues

No automated version numbering (uses timestamps)
Manual process to resume work on archived projects
No built-in comparison tool

See Issues for full list.
📝 License
MIT License - See LICENSE file
🙏 Acknowledgments
Created out of necessity after several "Claude overwrote my working code" incidents. If you've lost hours of work to an AI assistant, this system is for you.

Remember: Working projects go to the archive. Copy from archive to continue.
