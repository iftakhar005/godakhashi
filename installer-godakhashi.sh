#!/bin/bash
# Simple installer for gotakhashi

# Download gotakhashi if not already present
if [ ! -f gotakhashi ]; then
    echo "Downloading gotakhashi..."
    curl -s -O https://raw.githubusercontent.com/YOUR_USERNAME/godakhashi/main/godakhashi
fi

# Create ~/bin if it doesn't exist
mkdir -p ~/bin

# Copy script to ~/bin and make it executable
cp godakhashi ~/bin/
chmod +x ~/bin/godakhashi

# Add ~/bin to PATH if not already
if ! grep -q 'export PATH="$HOME/bin:$PATH"' ~/.bashrc; then
    echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
    echo "Added ~/bin to PATH. Please restart your terminal or run: source ~/.bashrc"
fi

echo "Installation complete! You can now run: godakhashi"