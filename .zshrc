export ZSH="$HOME/.oh-my-zsh"

# Starship assumes
ZSH_THEME=""

# Plugins
plugins=(git zoxide zsh-autosuggestions zsh-syntax-highlighting)

# Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Zsh options
setopt auto_cd
setopt always_to_end

# Aliases
alias pn="pnpm"
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias compose="docker compose"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Environment scripts
[ -f "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"

# Github CLI shortcuts
alias ghprc="gh pr create --fill"
alias ghprm="gh pr merge"
alias ghpr="ghprc && ghprm"

# Starship prompt
eval "$(starship init zsh)"

cd ~/Dev || mkdir ~/Dev && cd ~/Dev
