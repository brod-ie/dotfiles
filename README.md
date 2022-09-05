# Brodie's dotfiles

![Screenshot.png](Screenshot.png)

## Homebrew

It all starts with Homebrew!

1. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
1. `brew uninstall --force ruby && brew uninstall --force node && brew update && brew bundle && mkdir ~/.nvm && brew install gh` (making use of [bundle](https://apple.stackexchange.com/a/256269/181634))

## Bash

1. `chsh -s /bin/bash`
1. `mkdir ~/GitHub/`

Now clone this repo

1. `cd ~/GitHub/ && gh repo clone brod-ie/dotfiles`

And configure this Mac's Bash setup

1. `cd ~ && ln -s ~/GitHub/dotfiles/bash/.bash_profile . && ln -s ~/GitHub/dotfiles/bash/.hushlogin . && ln -s ~/GitHub/dotfiles/bash/.nvmrc . && ln -s ~/GitHub/dotfiles/bash/Brewfile .`

## macOS

[List of macOS programmatically configurable options](https://macos-defaults.com).

1. `dotfiles && ./macos/macos.sh`
1. `sudo shutdown -r now`

## Download folder in iCloud Drive

1. `mv ~/Downloads/* /Users/brodie/Library/Mobile\ Documents/com\~apple\~CloudDocs/Downloads`
1. `sudo rm -rf ~/Downloads/`
1. `ln -s /Users/brodie/Library/Mobile\ Documents/com\~apple\~CloudDocs/Downloads ~/Downloads`

## App Store

- [ ] [Install Due](https://apps.apple.com/gb/app/due-reminders-countdown-timers/id524373870?m
- [ ] [Install Amphetamine](https://apps.apple.com/gb/app/amphetamine/id937984704?mt=12)
- [ ] [Install Magnet](https://apps.apple.com/gb/app/magnet/id441258766?mt=12)
