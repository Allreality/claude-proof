# Getting Started After Reboot

## Quick Start Commands

### 1. Navigate to Projects
```bash
cd /mnt/c/projects
cd /mnt/c/projects

# Create a "Getting Started" guide
cat > project-hub/docs/GETTING_STARTED.md << 'ENDOFFILE'
# Getting Started After Reboot

## Quick Start Commands

### 1. Navigate to Projects
```bash
cd /mnt/c/projects

Verify Location
pwd
# Should show: /mnt/c/projects

Check Your Protected Projects
./project-hub/claude-proof/protect.sh list

Common Paths
Main Directories

Projects Root: /mnt/c/projects
Claude Proof System: /mnt/c/projects/project-hub/claude-proof/
Active Projects: /mnt/c/projects/active-projects/
Archives: /mnt/c/projects/archive/
Documentation: /mnt/c/projects/project-hub/docs/

Protected Projects

ahweb (Desktop): /mnt/c/Users/akilh/OneDrive/Desktop/ahweb
liquidity-dashboard: /mnt/c/projects/active-projects/liquidity-dashboard
dao-hash: /mnt/c/projects/active-projects/dao-hash
tan: /mnt/c/projects/active-projects/tan
midnight-infrastructure: /mnt/c/projects/midnight-infrastructure
total-reality-art: /mnt/c/projects/total-reality-art

Shell Aliases (Add to ~/.bashrc)

# Add these to your ~/.bashrc
alias proj='cd /mnt/c/projects'
alias protect='/mnt/c/projects/project-hub/claude-proof/protect.sh'
alias listprotected='/mnt/c/projects/project-hub/claude-proof/protect.sh list'
alias projects='cd /mnt/c/projects && ls -la'

Apply aliases:
echo "alias proj='cd /mnt/c/projects'" >> ~/.bashrc
echo "alias protect='/mnt/c/projects/project-hub/claude-proof/protect.sh'" >> ~/.bashrc
echo "alias listprotected='/mnt/c/projects/project-hub/claude-proof/protect.sh list'" >> ~/.bashrc
source ~/.bashrc

After adding aliases, you can use:
proj                    # Go to projects
listprotected          # List all protected projects
protect list           # Same as above
protect verify /path   # Verify protection

Virtual Environments
Python Projects

# If you see (venv) or (env) in your prompt, you're in a virtual environment
# To deactivate:
deactivate

# To activate (if needed):
cd /mnt/c/projects/your-project
source venv/bin/activate

Common Tasks
Protect a New Project

cd /mnt/c/projects
./project-hub/claude-proof/protect.sh protect "/full/path/to/project" "Description"

Check What's Protected
cd /mnt/c/projects
./project-hub/claude-proof/protect.sh list

Find a Project
cd /mnt/c/projects
cat project-hub/docs/CLAUDE_PROOF_GUIDE.md
cat project-hub/claude-proof/PROTECTION_SUMMARY.md

Troubleshooting
"No such file or directory"
Problem: You're in the wrong directory
Solution:
cd /mnt/c/projects
pwd  # Verify location

"Permission denied"
Problem: Script not executable
Solution:
chmod +x /mnt/c/projects/project-hub/claude-proof/protect.sh

Can't find a project
Problem: Don't remember where it is
Solution:
cd /mnt/c/projects
find . -name "*project-name*" -type d

Lost after reboot
Problem: Terminal opens in wrong directory
Solution:
# Always start with:
cd /mnt/c/projects
# Or use the 'proj' alias after setting it up

Daily Workflow
Morning Startup
# 1. Open terminal
cd /mnt/c/projects

# 2. Check protected projects
./project-hub/claude-proof/protect.sh list

# 3. Navigate to working project
cd active-projects/your-project

# 4. Activate virtual environment if needed
source venv/bin/activate

Before Ending Session
# 1. Review what you worked on
cd /mnt/c/projects
ls -lt */ | head -10

# 2. Consider protecting if you made significant changes
./project-hub/claude-proof/protect.sh list

# 3. Document any important changes
echo "$(date): What I worked on today" >> project-hub/docs/work-log.md

Quick Reference Card
CommandWhat it doescd /mnt/c/projectsGo to projects folderpwdShow current directoryls -laList all files/folders./project-hub/claude-proof/protect.sh listShow protected projectsfind . -name "name"Find file/foldercat file.mdView file contentsdeactivateExit Python virtual env
Important Files to Bookmark

This file: /mnt/c/projects/project-hub/docs/GETTING_STARTED.md
Protection Summary: /mnt/c/projects/project-hub/claude-proof/PROTECTION_SUMMARY.md
Claude Proof Guide: /mnt/c/projects/project-hub/docs/CLAUDE_PROOF_GUIDE.md
Quick Reference: /mnt/c/projects/project-hub/claude-proof/QUICK_REFERENCE.md

Emergency Recovery
If you accidentally delete something

Check archive: /mnt/c/projects/archive/claude-proof/
Find timestamped backup: ls -la archive/claude-proof/
Copy from archive: cp -R archive/claude-proof/project_TIMESTAMP ./restored-project

If nothing works

Check project-backup folder: /mnt/c/projects/project-backup/
Review protection log: cat project-hub/claude-proof/logs/protection_log.txt

Next Steps After Reading This

 Set up shell aliases (see above)
 Bookmark this file
 Test the commands
 Create a desktop shortcut to /mnt/c/projects
 Print or save the Quick Reference Card


Remember: When in doubt, run cd /mnt/c/projects first!
