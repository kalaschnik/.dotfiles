#!/usr/bin/env zsh

# if brew command is not found install homebrew
if ! exists brew; then
  echo "\n====================\t🍻 Homebrew Setup\t====================\n"

  echo "🍺 Installing Homebrew\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "\n🍺 Done! Homebrew installed\n"
fi



echo "\n>_ Installing Formulae, Casks & Fonts\t\n"

# Uses the Brewfile
brew bundle --verbose

echo "\n🍺 Done! Apps & Fonts installed\t\n"