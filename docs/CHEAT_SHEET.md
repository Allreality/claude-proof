Quick Cheat Sheet
Start Here After Reboot
cd /mnt/c/projects

Essential Commands
# Navigation
cd /mnt/c/projects                    # Go to projects
pwd                                   # Where am I?
ls -la                               # What's here?

# Claude Proof System
./project-hub/claude-proof/protect.sh list                    # List protected
./project-hub/claude-proof/protect.sh protect "/path" "desc"  # Protect project
./project-hub/claude-proof/protect.sh verify "/path"         # Verify protection

# Find Things
find . -name "*keyword*" -type d     # Find folder
find . -name "*keyword*" -type f     # Find file

# View Docs
cat project-hub/docs/GETTING_STARTED.md
cat project-hub/claude-proof/PROTECTION_SUMMARY.md
Your Protected Projects (6)

ahweb (Desktop)
liquidity-dashboard
dao-hash
tan
midnight-infrastructure
total-reality-art

Archives Location
/mnt/c/projects/archive/claude-proof/
Aliases to Add
echo "alias proj='cd /mnt/c/projects'" >> ~/.bashrc
source ~/.bashrc

Then just type: proj
