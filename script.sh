#!/bin/bash

# Create user if it does not already exist
if ! id "hari" &>/dev/null; then
    sudo useradd hari
fi

# Display current password aging settings
sudo chage -l hari

# Set account expiration date
sudo chage -E 2024-10-24 hari

# Set minimum days between password changes
sudo chage -m 45 hari

# Set maximum days password is valid
sudo chage -M 90 hari

# Display updated settings
sudo chage -l hari
