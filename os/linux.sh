# Linux specifc ZSH configurations

# Homebrew
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "\$($(brew --prefix)/bin/brew shellenv)"