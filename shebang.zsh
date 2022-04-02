#!/usr/bin/env bash

echo "\nRunning $0\n"
echo "ZSH_VERSION → $ZSH_VERSION\n"
echo "Current Shell → $(ps $$ -ocomm=)\n"

exists brew && echo "Homebrew is installed" || echo "Homebrew is not installed"

which exists

sleep 5s; echo "Done"