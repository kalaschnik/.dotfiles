#!/usr/bin/env zsh

# Rationale
# Install zsh via hombrew is not chaning the shell, see here:
# ❯ which zsh
# /usr/local/bin/zsh
# ❯ echo $SHELL
# /bin/zsh

# in order to actually change it we need to run chsh command and set the path explicitly

# to allow this we need to append the path (i.e., /usr/local/bin/zsh) to the file:
# /etc/shells  

echo "\n====================\t👨‍💻 Setup ZSH\t====================\n"
if ! grep -Fxq '/usr/local/bin/zsh' '/etc/shells'; then
  echo "Adding hombrew zsh to /etc/shells to allow — Enter sudo password:\n"
  echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

if ! [ "$SHELL" = '/usr/local/bin/zsh' ]; then
  echo "Change login shell — Enter user password:\n"
  chsh -s /usr/local/bin/zsh
fi
