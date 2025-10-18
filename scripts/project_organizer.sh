#!/bin/bash

# Enhanced Project Organization Script

cd /mnt/c/projects

# Logging function
log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $*" | tee -a "/mnt/c/projects/project-hub/docs/organization.log"
}

# Safety function to prevent overwriting
safe_move() {
    local source="$1"
    local destination="$2"
    local base_name=$(basename "$source")

    # Ensure destination exists
    mkdir -p "$destination"

    # Verbose logging
    log "Moving: $source → $destination/$base_name"

    # If destination already has the same named folder, create a timestamped version
    if [ -e "$destination/$base_name" ]; then
        local timestamp=$(date +'%Y%m%d_%H%M%S')
        local new_name="${base_name}_${timestamp}"
        log "⚠️ Conflict detected. Renaming to $new_name"
        mv "$source" "$destination/$new_name"
    else
        mv "$source" "$destination/$base_name"
    fi
}

# Create directories
mkdir -p "/mnt/c/projects/active-projects"
mkdir -p "/mnt/c/projects/archive/projects"
mkdir -p "/mnt/c/projects/project-hub/docs"

# Enhanced categorization function
categorize_project() {
    local project_path="$1"
    local project_name=$(basename "$project_path")

    # Skip known system or meta directories
    if [[ "$project_name" =~ ^(project-hub|archive|active-projects|\.|..)$ ]]; then
        log "🚫 Skipping system directory: $project_name"
        return
    }

    # Check if it's actually a directory
    [ -d "$project_path" ] || return

    # Detailed categorization
    if [ -f "$project_path/README.md" ]; then
        # Projects with README go to active-projects
        log "📘 Documented project: $project_name"
        safe_move "$project_path" "/mnt/c/projects/active-projects"
    elif [ -f "$project_path/package.json" ] || [ -f "$project_path/requirements.txt" ]; then
        # Potential code projects go to archive/projects
        log "🔍 Potential project: $project_name"
        safe_move "$project_path" "/mnt/c/projects/archive/projects"
    elif [ -n "$(ls -A "$project_path")" ]; then
        # Non-empty directories that don't fit other categories
        log "❓ Uncategorized non-empty directory: $project_name"
        safe_move "$project_path" "/mnt/c/projects/archive/projects"
    else
        log "🗑️ Empty directory: $project_name (will be deleted)"
        rmdir "$project_path"
    fi
}

# Main organization function
organize_projects() {
    log "🗂️ Starting Project Organization"
    
    # Verbose logging of projects
    log "Projects to process:"
    find . -maxdepth 1 -type d | grep -vE '^(./\.|./project-hub|./archive|./active-projects)$' | sed 's|^\./||'
    
    # Process projects safely
    for dir in */; do
        categorize_project "$dir"
    done

    log "✅ Project organization complete"
}

# Run organization
organize_projects
