# Brodie's dotfiles

![Screenshot.png](Screenshot.png)

## Apps

### App Store

- [ ] [Install 1Password](https://apps.apple.com/gb/app/1password-7-password-manager/id1333542190?mt=12)
- [ ] [Install Due](https://apps.apple.com/gb/app/due-reminders-countdown-timers/id524373870?mt=12)
- [ ] [Install WhatsApp](https://apps.apple.com/gb/app/whatsapp-desktop/id1147396723?mt=12)
- [ ] [Install CARROT Weather](https://apps.apple.com/gb/app/carrot-weather/id993487541?mt=12)
- [ ] [Install Amphetamine](https://apps.apple.com/gb/app/amphetamine/id937984704?mt=12)
- [ ] [Install Magnet](https://apps.apple.com/gb/app/magnet/id441258766?mt=12)
- [ ] [Install Fantastical](https://apps.apple.com/gb/app/fantastical-calendar-tasks/id975937182?mt=12)

### External

- [ ] [Download & Install Xcode](https://xcodereleases.com)
- [ ] [Download & Install Visual Studio Code](https://code.visualstudio.com/download)
- [ ] [Download & Install GitHub](https://central.github.com/deployments/desktop/desktop/latest/darwin)
- [ ] [Download & Install Alfred](https://www.alfredapp.com)
- [ ] [Download & Install Sunsama](https://app.sunsama.com/desktop)
- [ ] [Download & Install Notion](https://www.notion.so/desktop)

## Bash

1. `chsh -s /bin/bash`
1. `mkdir ~/GitHub/`
1. [Clone this repo](x-github-client://openRepo/https://github.com/brod-ie/dotfiles) into `~/GitHub/`
1. `cd ~ && ln -s ~/GitHub/dotfiles/bash/.bash_profile . && ln -s ~/GitHub/dotfiles/bash/.hushlogin . && ln -s ~/GitHub/dotfiles/bash/.nvmrc . && ln -s ~/GitHub/dotfiles/bash/Brewfile .`

## macOS

1. `dotfiles && ./macos/macos.sh`
1. `sudo shutdown -r now`

## Homebrew

1. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
1. `brew uninstall --force ruby && brew uninstall --force node && brew update && brew bundle && mkdir ~/.nvm` (making use of [bundle](https://apple.stackexchange.com/a/256269/181634))

## Download folder in iCloud Drive

1. `mv ~/Downloads/* /Users/brodie/Library/Mobile\ Documents/com\~apple\~CloudDocs/Downloads`
1. `sudo rm -rf ~/Downloads/`
1. `ln -s /Users/brodie/Library/Mobile\ Documents/com\~apple\~CloudDocs/Downloads ~/Downloads`

## SSH Config

1. `cd ~/.ssh && ln -s ~/GitHub/dotfiles/ssh/config .` (N.B. for obvious reasons, this doesn't live here, nor do certs)
   ~/Library/Application\ Support/Sublime\ Text\ 3/Packages && rm -rf User && ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/subl/User`

## Visual Studio Code

1. Install the Settings Sync package and set the Gist ID to 🤫

## Xcode

1. `cd ~/Library/Developer/Xcode/UserData && rm -rf CodeSnippets && rm -rf FontAndColorThemes && rm -rf KeyBindings && ln -s ~/GitHub/dotfiles/xcode/CodeSnippets . && ln -s ~/GitHub/dotfiles/xcode/FontAndColorThemes . && ln -s ~/GitHub/dotfiles/xcode/KeyBindings .`
