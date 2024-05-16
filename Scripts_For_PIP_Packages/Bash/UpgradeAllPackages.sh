#!/bin/bash
# Bash script to upgrade all pip packages installed

echo "Upgrading all pip packages..."

# Write all installed packages to "requirements.txt"
# This will overwrite the existing "requirements.txt"
pip freeze > requirements.txt

# Upgrade all packages from "requirements.txt"
while IFS= read -r package
do
    echo "Upgrading $package..."
    pip install --upgrade "$package"
done < requirements.txt

echo "All pip packages upgraded."
