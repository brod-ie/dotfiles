# Brodie's dotfiles

![Screenshot.png](Screenshot.png)

# Getting started

Change the Shell to Bash

```
chsh -s /bin/bash && exec bash
```

Now install Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
cd ~ && rm -rf .bash_profile && \
ln -s ~/GitHub/dotfiles/bash/.bash_profile . && \
ln -s ~/GitHub/dotfiles/bash/.hushlogin . && \
ln -s ~/GitHub/dotfiles/bash/.nvmrc . && \
ln -s ~/GitHub/dotfiles/bash/Brewfile . && \
exec bash
```

Now linked, install making use of [bundle](https://apple.stackexchange.com/a/256269/181634)

```
brew uninstall --force ruby && brew uninstall --force node && brew update && brew bundle && mkdir ~/.nvm
```

Install apps that aren't on Homebrew, too, using [mas](https://github.com/mas-cli/mas)

```
mas install 524373870 && \
mas install 1569813296 && \
mas install 937984704 && \
mas install 441258766
```

Sync the ~/Downloads folder to iCloud

```
sudo rm -rf ~/Downloads && \
sudo ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads ~/Downloads
```

Set our defaults

```
duti -s com.microsoft.VSCode json all && duti -s com.microsoft.VSCode svg all
```

[Turn on Settings Sync in Visual Studio Code](https://code.visualstudio.com/docs/editor/settings-sync)

And finally, configure macOS ([list of macOS programmatically configurable options](https://macos-defaults.com))

```
dotfiles && ./macos/macos.sh && sudo shutdown -r now
```
