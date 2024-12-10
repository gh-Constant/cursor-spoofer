#!/bin/bash

# Check if script is run with sudo
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root (use sudo)"
    exit 1
fi

# Function to install macchanger if not present
install_macchanger() {
    if ! command -v macchanger &> /dev/null; then
        echo "Installing macchanger..."
        git clone https://github.com/the-weird-aquarian/universal-macchanger.git
        cd universal-macchanger
        chmod +x install.sh
        ./install.sh
        cd ..
        rm -rf universal-macchanger
    fi
}

# Uninstall Cursor app and remove related files
echo "Uninstalling Cursor..."
# Remove app from Applications
rm -rf /Applications/Cursor.app
# Remove related files
rm -rf ~/Library/Application\ Support/Cursor
rm -rf ~/Library/Caches/Cursor
rm -rf ~/Library/Preferences/com.cursor.Cursor.plist
rm -rf ~/Library/Saved\ Application\ State/com.cursor.Cursor.savedState

# Install macchanger if needed
install_macchanger


# Turn off WiFi
echo "Turning off WiFi..."
networksetup -setairportpower en0 off
sleep 2

# Turn on WiFi
echo "Turning WiFi back on..."
networksetup -setairportpower en0 on

# Change MAC address
echo "Changing MAC address..."
macchanger -r en0

echo "All operations completed successfully!"
