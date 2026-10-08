#!/bin/bash

# Check whether username was supplied
if [ -z "$1" ]; then
    echo "Error: Username is required"
    exit 1
fi

# Set last password change date
chage -d 2025-01-01 "$1"

# Set account expiration date
chage -E 2026-12-31 "$1"

# Set minimum password age
chage -m 7 "$1"

# Set maximum password age
chage -M 90 "$1"
