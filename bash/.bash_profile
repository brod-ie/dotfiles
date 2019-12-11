# Hide the ‘default interactive shell is now zsh’ message`
export BASH_SILENCE_DEPRECATION_WARNING=1

# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/GitHub/dotfiles/bash/.{aliases,bash_prompt,dircolours,exports,functions,inputrc}; do
    [ -r "$file" ] && source "$file"
done
unset file

##
## better `cd`'ing
##

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
