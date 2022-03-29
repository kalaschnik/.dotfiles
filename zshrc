###############################################################################
# Powerlevel10k instant prompt and theme
###############################################################################
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Powerlevel10k Theme
# needs: brew install romkatv/powerlevel10k/powerlevel10k
source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


###############################################################################
# Aliases
###############################################################################
# Use exa for ls
alias exa='exa -laFh --git --group-directories-first'
# forward ls to exa
alias ls=exa
# use old ls with lsa
alias lsa='ls -lAFh'
alias R='R --no-save --no-restore-data'

###############################################################################
# Functions
###############################################################################
function mkcd() {
  mkdir -p "$@" && cd "$_"; # _ will cd in the last location of a list
}



# enable autosuggestions (requires brew install zsh-autosuggestions)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Utilities
# Syntax highlighting for man pages using bat
# https://github.com/sharkdp/bat#man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Default no-quarantine for brew installs
export HOMEBREW_CASK_OPTS="--no-quarantine"


