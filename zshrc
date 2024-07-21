# Intialize ZSH
source $HOME/.zsh_init.zsh

export EDITOR=vim
export PATH=$PATH:$HOME/bin

# Load secrets
if [ -f '$HOME/.secrets' ]; then source $HOME/.secrets; fi

# ZSH Plugin Manager [Antidote]
source ~/.antidote/antidote.zsh
antidote load

# Starship
eval "$(starship init zsh)"

# Mise
eval "$($HOME/.local/bin/mise activate zsh)"

# Completions
source <(kubectl completion zsh)
# The next line enables shell command completion for gcloud.
if [ -f '$HOME/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/google-cloud-sdk/completion.zsh.inc'; fi
# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/google-cloud-sdk/path.zsh.inc'; fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    source ~/.dotfiles/os/linux.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    source ~/.dotfiles/os/macos.sh
fi

# aliases
alias k="kubectl"

