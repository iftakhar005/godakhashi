#!/bin/bash
# Simple installer for godakhashi

# Download godakhashi (Using the specific raw link you provided)
echo "Downloading godakhashi..."
curl -s -o godakhashi https://raw.githubusercontent.com/iftakhar005/godakhashi/refs/heads/main/godakhashi

# Create ~/bin if it doesn't exist
mkdir -p ~/bin

# Copy script to ~/bin and make it executable
cp godakhashi ~/bin/
chmod +x ~/bin/godakhashi

# Add ~/bin to PATH (Checking both .bashrc and .zshrc)
# This ensures it works on your Zsh terminal too
for rcfile in ~/.bashrc ~/.zshrc; do
    if [ -f "$rcfile" ]; then
        if ! grep -q 'export PATH="$HOME/bin:$PATH"' "$rcfile"; then
            echo 'export PATH="$HOME/bin:$PATH"' >> "$rcfile"
            echo "Added ~/bin to PATH in $rcfile"
        fi
    fi
done

echo "Installation complete! Restart your terminal and run: godakhashi"
