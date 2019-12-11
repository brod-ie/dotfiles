# Brodie's dotfiles

# macOS

![Screenshot.png](Screenshot.png)

1. `dotfiles && ./macos/macosh.sh`
1. `sudo shutdown -r now`

## Apps

- [] [Download 1Password](https://apps.apple.com/gb/app/1password-7-password-manager/id1333542190?mt=12)
- [] [Download Alfred](https://www.alfredapp.com)
- [] [Download 1Blocker](https://apps.apple.com/gb/app/1blocker/id1107421413?mt=12)
- [] [Download Due](https://apps.apple.com/gb/app/due-reminders-countdown-timers/id524373870?mt=12)
- [] [Download Fantastical](https://apps.apple.com/gb/app/fantastical-2/id975937182?mt=12)
- [] [Download WhatsApp](https://apps.apple.com/gb/app/whatsapp-desktop/id1147396723?mt=12)
- [] [Download CARROT Weather](https://apps.apple.com/gb/app/carrot-weather/id993487541?mt=12)
- [] [Download Amphetamine](https://apps.apple.com/gb/app/amphetamine/id937984704?mt=12)
- [] [Download Bartender](https://www.macbartender.com)
- [] [Download iStat Menu Bar](https://bjango.com/mac/istatmenus/)
- [] [Download Sketch](https://www.sketch.com/get/)
- [] [Download Notion](https://www.notion.so/desktop)
- [] [Download Soulver](https://apps.apple.com/gb/app/soulver-2/id413965349?mt=12)

## Bash

1. [Download GitHub](https://central.github.com/deployments/desktop/desktop/latest/darwin)
1. [Clone this repo](x-github-client://openRepo/https://github.com/brod-ie/dotfiles) into `~/GitHub/`
1. `cd ~ && ln -s ~/GitHub/dotfiles/bash/.bash_profile . && ln -s ~/GitHub/dotfiles/bash/.hushlogin .`

## Homebrew

1. `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
1. `brew cask install brooklyn`

## Download folder synchronisation

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
