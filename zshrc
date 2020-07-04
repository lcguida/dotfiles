# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# vim FTW!
export EDITOR=vim

# Add SSH keys to keychain to avoid typing password
# http://www.qanuq.com/2017/10/09/installer-ssh-keychain/
eval `keychain --quiet --eval --agents ssh ~/.ssh/id_rsa ~/.ssh/hespul_rsa`

# Use `open`
alias open='xdg-open'

# p10k Configuration
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Fix reverse search shortcut
bindkey "^R" history-incremental-search-backward