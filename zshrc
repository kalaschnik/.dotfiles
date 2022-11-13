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
# requires brew install romkatv/powerlevel10k/powerlevel10k
source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###############################################################################
# ZSH Plugins
###############################################################################
# enable autosuggestions (requires https://formulae.brew.sh/formula/zsh-autosuggestions)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# enable zsh completen (requires https://formulae.brew.sh/formula/zsh-completions)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
  zstyle ':completion:*' menu select
fi

###############################################################################
# Aliases
###############################################################################
# Use exa for ls
alias exa='exa -aa --header --long --classify --git --group-directories-first --icons --accessed --modified --created --group'
# forward ls to exa
alias ls=exa
alias ll=exa
# use old ls with lsa
alias lsa='command ls -lAFh'
alias R='R --no-save --no-restore-data'
alias bbd='brew bundle dump --file=~/dotfiles/Brewfile --force --describe'
alias rm=trash # using node’s global trash-cli
alias trail='bat<<<${(F)path}'
alias p='cd ~/Nextcloud/projects/'

###############################################################################
# Functions
###############################################################################
# matching with oh-my-zsh’s take: https://github.com/ohmyzsh/ohmyzsh/blob/9e967b4eccbe26701315860a3b0bad01fde725c8/lib/functions.zsh#L39
function mkcd() {
  mkdir -p $@ && cd ${@:$#}
}

###############################################################################
# Utilities
###############################################################################

# Syntax highlighting for man pages using bat
# https://github.com/sharkdp/bat#man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# This is also used by R and radian to set response language
export LANG=en_US.UTF-8

# Allow interactive comments (#)
setopt interactive_comments

###############################################################################
# Path additions
###############################################################################
export PATH="$N_PREFIX/bin:$PATH:"
# create unique path (not playing nice with powerlevel10k)
# typeset -U path
# path=(
#   "$N_PREFIX/bin"
#   path
# )

###############################################################################
# Last Load
###############################################################################
# Syntax Highlighting (https://formulae.brew.sh/formula/zsh-syntax-highlighting)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History substring search (https://formulae.brew.sh/formula/zsh-history-substring-search)
# this needs to come after syntax highlighting: https://github.com/zsh-users/zsh-history-substring-search#usage
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# To customize prompt, run `p10k configure` or edit ~/dotfiles/p10k.zsh.
[[ ! -f ~/dotfiles/p10k.zsh ]] || source ~/dotfiles/p10k.zsh

