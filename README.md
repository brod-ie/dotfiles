# Brodie's dotfiles

![Screenshot.png](Screenshot.png)

# Getting started

Change the Shell to Bash

```
chsh -s /bin/bash
```

Install Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then 1Password and the GitHub CLI

```
/opt/homebrew/bin/brew install --cask 1password && /opt/homebrew/bin/brew install gh
```

Now configure 1Password

```
open -a 1Password
```

Login to GitHub

```
/opt/homebrew/bin/gh auth login
```

Then clone this repo
 
```
/opt/homebrew/bin/gh repo clone brod-ie/dotfiles ~/GitHub/dotfiles
```

And symlink config files

```
cd ~ && rm -rf .bash_profile && ln -s ~/GitHub/dotfiles/bash/.bash_profile . && ln -s ~/GitHub/dotfiles/bash/.hushlogin . && ln -s ~/GitHub/dotfiles/bash/.nvmrc . && ln -s ~/GitHub/dotfiles/bash/Brewfile .
```

Now linked, install making use of [bundle](https://apple.stackexchange.com/a/256269/181634)

```
brew bundle
```

Sync the ~/Downloads folder to iCloud

```
sudo rm -rf ~/Downloads && sudo ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads ~/Downloads
```

And finally configure macOS ([list of macOS programmatically configurable options](https://macos-defaults.com))

```
dotfiles && ./macos/macos.sh && sudo shutdown -r now
```


## App Store

- [ ] [Install Due](https://apps.apple.com/gb/app/due-reminders-countdown-timers/id524373870?m
- [ ] [Install Amphetamine](https://apps.apple.com/gb/app/amphetamine/id937984704?mt=12)
- [ ] [Install Magnet](https://apps.apple.com/gb/app/magnet/id441258766?mt=12)
