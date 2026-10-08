#!/bin/bash

# Check if a username argument was provided
if [ -z "$1" ]; then
    echo "Error: Missing required username argument." >&2
    echo "Usage: sudo $0 <username>" >&2
    exit 1
fi

USERNAME="$1"

# Apply password-aging policies using chage
chage -d 2025-01-01 -E 2026-12-31 -m 7 -M 90 "$USERNAME"
