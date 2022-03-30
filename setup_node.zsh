#!/usr/bin/env zsh

# node versions are managed via n, which is in the brewfile
# See zshrc for N_PREFIX variable and add to PATH
# use n uninstall to uninstall

if ! exists node; then
  echo "\n====================\tNode Setup\t====================\n"

  echo "Installing lts and latest node and npm via n (run n to select version)\n"
  n lts
  n latest
fi
