#!/bin/bash

# Command Line Developer Tools
xcode-select --install

# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Check for potential problems.
brew cleanup && brew update && brew doctor

# Install cask
if [ ! $(brew tap | grep phinze/cask) ]; then
  brew tap caskroom/cask
fi
brew install brew-cask
brew cask cleanup
