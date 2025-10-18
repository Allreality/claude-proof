#!/bin/bash

PROTECTED_LIST="/mnt/c/projects/project-hub/claude-proof/protected_items.txt"
ARCHIVE_DIR="/mnt/c/projects/archive/claude-proof"
LOG_DIR="/mnt/c/projects/project-hub/claude-proof/logs"

protect_item() {
    local item=$1
    local description=$2
    
    echo "🔒 Protecting: $item"
    
    # Create archive
    mkdir -p "$ARCHIVE_DIR"
    timestamp=$(date +%Y%m%d_%H%M%S)
    archive_name=$(basename "$item")_${timestamp}
    
    # Copy to archive with verification
    echo "📦 Creating archive..."
    cp -R "$item" "$ARCHIVE_DIR/$archive_name"
    
    if [ $? -eq 0 ]; then
        echo "✅ Archive created successfully"
        
        # Log protection
        echo "$item|$description|$(date)|$archive_name" >> "$PROTECTED_LIST"
        
        # Create protection log entry
        cat >> "$LOG_DIR/protection_log.txt" << LOGENTRY

=== PROTECTION ENTRY ===
Date: $(date)
Item: $item
Archive: $ARCHIVE_DIR/$archive_name
Description: $description
Status: PROTECTED
========================

LOGENTRY
        
        echo "✅ CLAUDE PROOF PROTECTION APPLIED"
        echo "📁 Original: $item"
        echo "📦 Archive: $ARCHIVE_DIR/$archive_name"
        return 0
    else
        echo "❌ Failed to create archive"
        return 1
    fi
}

list_protected() {
    echo "=== Claude Proof Protected Items ==="
    if [ -f "$PROTECTED_LIST" ]; then
        cat "$PROTECTED_LIST" | while IFS='|' read -r path desc date archive; do
            echo ""
            echo "📁 $path"
            echo "   Description: $desc"
            echo "   Protected: $date"
            echo "   Archive: $archive"
        done
    else
        echo "No items protected yet"
    fi
}

verify_protection() {
    local item=$1
    echo "🔍 Verifying protection for: $item"
    
    if grep -q "$item" "$PROTECTED_LIST" 2>/dev/null; then
        echo "✅ Item is CLAUDE PROOF protected"
        grep "$item" "$PROTECTED_LIST"
        return 0
    else
        echo "❌ Item is NOT protected"
        return 1
    fi
}

case "$1" in
    protect)
        protect_item "$2" "$3"
        ;;
    list)
        list_protected
        ;;
    verify)
        verify_protection "$2"
        ;;
    *)
        echo "Usage: $0 {protect|list|verify} [path] [description]"
        echo ""
        echo "Examples:"
        echo "  $0 protect /path/to/folder 'My important project - 10 hours'"
        echo "  $0 list"
        echo "  $0 verify /path/to/folder"
        ;;
esac
