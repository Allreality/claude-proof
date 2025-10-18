Changelog
All notable changes to the Claude Proof System.
1.0.0 - 2025-10-18
Added

Initial release of Claude Proof System
Core protect.sh script with three commands:

protect - Archive projects with timestamp
list - Display all protected items
verify - Check protection status


Timestamped archiving system
Protection registry (protected_items.txt)
Activity logging system
Comprehensive documentation
Architecture

Archive location: Configurable (default: ../archive/claude-proof/)
Protection registry: claude-proof/protected_items.txt
Timestamp format: YYYYMMDD_HHMMSS

[Unreleased]
Planned for v2.0

Semantic versioning system (v1.0, v1.1, v2.0)
restore command for recovering archived projects
continue command for resuming work from archive
diff command for comparing versions
Configuration file support
Git hooks integration


