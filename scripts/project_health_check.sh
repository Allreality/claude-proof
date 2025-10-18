#!/bin/bash

# Project Health Check Script

# Ensure log directory exists
[ -d "/mnt/c/projects/project-hub/docs" ] || mkdir -p "/mnt/c/projects/project-hub/docs"

LOG_FILE="/mnt/c/projects/project-hub/docs/health_check_$(date +'%Y%m%d').log"

log() {
    echo "$*" | tee -a "$LOG_FILE"
}

# Check for README (non-invasive)
check_readme() {
    local project_path="$1"
    if [ ! -f "$project_path/README.md" ]; then
        log "❌ No README: $project_path"
    else
        log "📘 README found: $project_path"
        # Quick peek at README
        log "README Preview:"
        head -n 3 "$project_path/README.md" | log
    fi
}

# Main health check function
health_check() {
    log "🩺 Project Health Check Started: $(date)"
    log "----------------------------"
    
    # Scan only top-level directories
    for project in /mnt/c/projects/*/; do
        log ""
        log "Checking: $project"
        check_readme "$project"
    done

    log "✅ Health check complete. Full log: $LOG_FILE"
}

# Run health check
health_check
