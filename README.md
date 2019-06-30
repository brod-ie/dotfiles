# Brodie's dotfiles

![Screenshot.png](Screenshot.png)

## Bash

1. [Setup Dropbox](https://www.dropbox.com/help/desktop-web/download-dropbox)
2. `cd ~ && ln -s ~/Dropbox/Repos/dotfiles/bash/.bash_profile . && ln -s ~/Dropbox/Repos/dotfiles/bash/.hushlogin .`
3. [There is no step 3](https://www.youtube.com/watch?v=6uXJlX50Lj8).

# macOS

1. `dotfiles && ./macos/macosh.sh`

## SSH Config

1. `cd ~/.ssh && ln -s ~/Dropbox/Repos/dotfiles/ssh/config .` (N.B. for obvious reasons, this doesn't live here, nor do certs)

## Sublime Text

1. `cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages && rm -rf User && ln -s ~/Dropbox/repos/dotfiles/subl/User`

## NGINX and PHP

1. `brew install nginx && brew install php70`
1. `cd /usr/local/etc/nginx/ && rm -rf nginx.conf && ln -s ~/Dropbox/Repos/dotfiles/nginx/nginx.conf .`
1. `cd /usr/local/etc/nginx/ && rm -rf servers && ln -s ~/Dropbox/Repos/dotfiles/nginx/servers/ .`
1. `cd /usr/local/etc/nginx/ && ln -s ~/Dropbox/Repos/dotfiles/nginx/include/ .`
1. `cd /usr/local/etc/php/7.2/php-fpm.d/ && rm -rf www.conf && ln -s ~/Dropbox/Repos/dotfiles/php/www.conf .`
1. `sudo brew services restart nginx && sudo brew services start php70`

## Xcode

1. `cd ~/Library/Developer/Xcode/UserData && rm -rf CodeSnippets && rm -rf FontAndColorThemes && rm -rf KeyBindings && ln -s ~/Dropbox/Repos/dotfiles/xcode/CodeSnippets . && ln -s ~/Dropbox/Repos/dotfiles/xcode/FontAndColorThemes . && ln -s ~/Dropbox/Repos/dotfiles/xcode/KeyBindings .`

## Download folder synchronisation

1. `mv ~/Downloads/* ~/Documents/Downloads`
1. `sudo rm -rf ~/Downloads/`
1. `ln -s ~/Documents/Downloads ~/Downloads`
