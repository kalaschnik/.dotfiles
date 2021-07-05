#!/usr/bin/env zsh

echo "\n====================\t🍻 Homebrew Setup\t====================\n"

echo "\n\t🍺 Installing Homebrew\tn"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "\n\t🍺 Done! Homebrew installed\t\n"


echo "\n\t>_ Installing Formulae\tn"

brew install bat
brew install ffmpeg
brew install gh
brew install git
brew install htop
brew install httpie
brew install lcdf-typetools # adobe-fonts downloader
brew install lf
brew install neofetch
brew install pandoc
brew install r
brew install rsync
brew install tmux
brew install youtube-dl
brew install zsh

echo "\n\t>_ Done! Formulae installed\t\n"


echo "\n\t💻 Installing Casks\tn"

brew install --cask adobe-creative-cloud
brew install --cask alfred
brew install --cask alt-tab
brew install --cask arduino
brew install --cask enpass
brew install --cask licecap
brew install --cask mattermost
brew install --cask microsoft-edge
brew install --cask microsoft-excel
brew install --cask microsoft-powerpoint
brew install --cask microsoft-teams
brew install --cask microsoft-word
brew install --cask nextcloud
brew install --cask obs
brew install --cask onedrive
brew install --cask opensesame
brew install --cask pixelsnap
brew install --cask rectangle
brew install --cask rstudio
brew install --cask spotify
brew install --cask telegram
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask vnc-viewer
brew install --cask whatsapp
brew install --cask zoom


echo "\n\t💻 Done! Casks installed\t\n"


echo "\n\t❦ Installing Fonts\tn"

brew tap homebrew/cask-fonts 
brew install --caks font-inter
brew install --caks font-computer-modern
brew install --caks font-fira-code


echo "\n\t❦ Done! Fonts installed\tn"