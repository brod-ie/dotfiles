# Brodie's dotfiles

![Screenshot.png](Screenshot.png)

## Apps

### App Store

- [ ] [Install 1Password](https://apps.apple.com/gb/app/1password-7-password-manager/id1333542190?mt=12)
- [ ] [Install 1Blocker](https://apps.apple.com/gb/app/1blocker/id1107421413?mt=12)
- [ ] [Install Due](https://apps.apple.com/gb/app/due-reminders-countdown-timers/id524373870?mt=12)
- [ ] [Install Fantastical](https://apps.apple.com/gb/app/fantastical-2/id975937182?mt=12)
- [ ] [Install WhatsApp](https://apps.apple.com/gb/app/whatsapp-desktop/id1147396723?mt=12)
- [ ] [Install CARROT Weather](https://apps.apple.com/gb/app/carrot-weather/id993487541?mt=12)
- [ ] [Install Amphetamine](https://apps.apple.com/gb/app/amphetamine/id937984704?mt=12)
- [ ] [Install Soulver](https://apps.apple.com/gb/app/soulver-2/id413965349?mt=12)
- [ ] [Install Unibox](https://apps.apple.com/gb/app/unibox/id702816521?mt=12)

### External

- [ ] [Download & Install GitHub](https://central.github.com/deployments/desktop/desktop/latest/darwin)
- [ ] [Download & Install Alfred](https://www.alfredapp.com)
- [ ] [Download & Install Bartender](https://www.macbartender.com)
- [ ] [Download & Install iStat Menu Bar](https://bjango.com/mac/istatmenus/)
- [ ] [Download & Install Notion](https://www.notion.so/desktop)

## Bash

1. `mkdir ~/GitHub/`
1. [Clone this repo](x-github-client://openRepo/https://github.com/brod-ie/dotfiles) into `~/GitHub/`
1. `cd ~ && ln -s ~/GitHub/dotfiles/bash/.bash_profile . && ln -s ~/GitHub/dotfiles/bash/.hushlogin .`

## macOS

1. `dotfiles && ./macos/macos.sh`
1. `sudo shutdown -r now`

## Homebrew

1. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
1. `brew cask install brooklyn`

## Download folder in iCloud Drive

1. `mv ~/Downloads/* ~/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads`
1. `sudo rm -rf ~/Downloads/`
1. `ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads ~/Downloads`

## SSH Config

1. `cd ~/.ssh && ln -s ~/GitHub/dotfiles/ssh/config .` (N.B. for obvious reasons, this doesn't live here, nor do certs)

## Sublime Text

1. Ensure that the `subl` folder in iCloud Drive is downloaded
1. [Download Sublime](https://www.sublimetext.com/3)
1. `cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages && rm -rf User && ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/subl/User`

## NGINX and PHP

1. `brew install nginx && brew install php70`
1. `cd /usr/local/etc/nginx/ && rm -rf nginx.conf && ln -s ~/GitHub/dotfiles/nginx/nginx.conf .`
1. `cd /usr/local/etc/nginx/ && rm -rf servers && ln -s ~/GitHub/dotfiles/nginx/servers/ .`
1. `cd /usr/local/etc/nginx/ && ln -s ~/GitHub/dotfiles/nginx/include/ .`
1. `cd /usr/local/etc/php/7.2/php-fpm.d/ && rm -rf www.conf && ln -s ~/GitHub/dotfiles/php/www.conf .`
1. `sudo brew services restart nginx && sudo brew services start php70`

## Xcode

1. `cd ~/Library/Developer/Xcode/UserData && rm -rf CodeSnippets && rm -rf FontAndColorThemes && rm -rf KeyBindings && ln -s ~/GitHub/dotfiles/xcode/CodeSnippets . && ln -s ~/GitHub/dotfiles/xcode/FontAndColorThemes . && ln -s ~/GitHub/dotfiles/xcode/KeyBindings .`
