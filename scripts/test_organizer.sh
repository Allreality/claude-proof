#!/bin/bash

# Comprehensive Project Organizer Test Script

# Set the base projects directory
PROJECT_DIR="/mnt/c/projects"

# Create necessary directories
mkdir -p "$PROJECT_DIR/active-projects"
mkdir -p "$PROJECT_DIR/archive/projects"
mkdir -p "$PROJECT_DIR/project-hub/docs"

# Backup current state
backup_current_state() {
    echo "🔒 Creating backup of current project state..."
    rm -rf "$PROJECT_DIR/project-backup"
    mkdir -p "$PROJECT_DIR/project-backup"
    cp -R "$PROJECT_DIR"/* "$PROJECT_DIR/project-backup/"
}

# Restore original state if needed
restore_original_state() {
    echo "🔄 Restoring original project state..."
    
    # Clear existing directories
    rm -rf "$PROJECT_DIR/active-projects"/*
    rm -rf "$PROJECT_DIR/archive/projects"/*
    
    # Copy back original files
    cp -R "$PROJECT_DIR/project-backup"/* "$PROJECT_DIR"/
    
    # Clean up backup
    rm -rf "$PROJECT_DIR/project-backup"
}

# Run the organizer
run_organizer() {
    echo "🚀 Running Project Organizer..."
    # Change to projects directory before running
    (cd "$PROJECT_DIR" && "$PROJECT_DIR/project-hub/scripts/project_organizer.sh")
}

# Verify organization results
verify_organization() {
    echo -e "\n🕵️ Verifying Organization Results:"
    
    echo "Active Projects:"
    ls "$PROJECT_DIR/active-projects" || echo "No active projects found"

    echo -e "\nArchived Projects:"
    ls "$PROJECT_DIR/archive/projects" || echo "No archived projects found"

    echo -e "\nOrganization Log:"
    cat "$PROJECT_DIR/project-hub/docs/organization.log"
}

# Main test function
test_organizer() {
    # Clear previous logs
    > "$PROJECT_DIR/project-hub/docs/organization.log"

    # Backup current state
    backup_current_state

    # Run organizer
    run_organizer

    # Verify results
    verify_organization

    # Always ask about restoration
    read -p "Restore original state? (y/n): " restore_choice
    if [[ "$restore_choice" == "y" ]]; then
        restore_original_state
    fi
}

# Run the test
test_organizer
