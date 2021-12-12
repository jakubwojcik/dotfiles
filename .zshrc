export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="eastwood"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-autosuggestions zsh-autocomplete zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

LS_COLORS="ow=01;36;40" && export LS_COLORS

unsetopt BEEP

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

function openall() {
  for folder in */; do
    code $folder;
  done
}

alias ap="ansible-playbook"

# WSL-related
alias explorer="explorer.exe"
alias cdpw="cd /mnt/c/Users/Jakub/Projekty"
alias cdpl="cd ~/projects"

# Work-related
export NODE_EXTRA_CA_CERTS="$HOME/documents/cacert.pem"
