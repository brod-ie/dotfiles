# Brodie's dotfiles

![Screenshot.png](Screenshot.png)

# Getting started

Change the Shell to Bash

```zsh
chsh -s /bin/bash && exec bash
```

Now install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then 1Password and the GitHub CLI

```bash
/opt/homebrew/bin/brew install --cask 1password && /opt/homebrew/bin/brew install gh
```

Now configure 1Password

```bash
open -a 1Password
```

Login to GitHub

```bash
/opt/homebrew/bin/gh auth login
```

Then clone this repo

```bash
/opt/homebrew/bin/gh repo clone brod-ie/dotfiles ~/GitHub/dotfiles
```

And symlink config files

```bash
cd ~ && rm -rf .bash_profile && \
ln -s ~/GitHub/dotfiles/bash/.bash_profile . && \
ln -s ~/GitHub/dotfiles/bash/.hushlogin . && \
ln -s ~/GitHub/dotfiles/bash/.nvmrc . && \
ln -s ~/GitHub/dotfiles/bash/Brewfile . && \
bash -l
```

Now linked, install making use of [bundle](https://apple.stackexchange.com/a/256269/181634)

```bash
brew uninstall --force ruby && brew uninstall --force node && brew update && brew bundle && mkdir ~/.nvm && nvm install
```

Sync the ~/Downloads folder to iCloud

```bash
sudo rm -rf ~/Downloads && \
sudo ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads ~/Downloads
```

Set our defaults

```bash
duti -s com.microsoft.VSCode json all && duti -s com.microsoft.VSCode svg all
```

[Turn on Settings Sync in Visual Studio Code](https://code.visualstudio.com/docs/editor/settings-sync)

And finally, configure macOS ([list of macOS programmatically configurable options](https://macos-defaults.com))

```bash
dotfiles && ./macos/macos.sh && sudo shutdown -r now
```
