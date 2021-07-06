#!/usr/bin/env zsh

echo "\n====================\t🍻 Homebrew Setup\t====================\n"

echo "\n\t🍺 Installing Homebrew\tn"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "\n\t🍺 Done! Homebrew installed\t\n"

echo "\n\t>_ Installing Formulae, Casks & Fonts\tn"

# Use the Brewfile
brew bundle --verbose

echo "\n\t🍺 Done! Apps & Fonts installed\t\n"