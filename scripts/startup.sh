#!/bin/bash
Create a startup script
cat > project-hub/scripts/startup.sh << 'ENDOFFILE'
#!/bin/bash
Startup script for quick project overview
echo "🚀 Welcome to Your Projects"
echo "=========================="
echo ""
cd /mnt/c/projects
echo "📍 Current Location: $(pwd)"
echo ""
echo "✅ Protected Projects:"
./project-hub/claude-proof/protect.sh list | grep "📁" | wc -l
echo ""
echo "📂 Recent Activity:"
ls -lt */ | head -5
echo ""
echo "💡 Quick Commands:"
echo "  proj              - Go to projects (if alias set up)"
echo "  listprotected     - Show all protected projects"
echo ""
echo "📚 Documentation:"
echo "  cat project-hub/docs/GETTING_STARTED.md"
echo "  cat project-hub/docs/CHEAT_SHEET.md"
echo ""
EOF
chmod +x project-hub/scripts/startup.sh
Add to bashrc for automatic startup message
cat >> ~/.bashrc << 'ENDOFFILE'
Project aliases
alias proj='cd /mnt/c/projects'
alias protect='/mnt/c/projects/project-hub/claude-proof/protect.sh'
alias listprotected='/mnt/c/projects/project-hub/claude-proof/protect.sh list'
Show startup message when opening terminal
if [ "$PWD" = "$HOME" ]; then
/mnt/c/projects/project-hub/scripts/startup.sh 2>/dev/null
fi
