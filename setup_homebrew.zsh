#!/usr/bin/env zsh

echo "\n====================\t🍻 Homebrew Setup\t====================\n"

echo "🍺 Installing Homebrew\tn"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install bat
echo "\n🍺 Done! Homebrew installed\t\n"

echo "\n>_ Installing Formulae, Casks & Fonts\tn"

# Uses the Brewfile
brew bundle --verbose

echo "\n🍺 Done! Apps & Fonts installed\t\n"