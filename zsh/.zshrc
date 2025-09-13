# Disable oh-my-zsh themes to use Starship
ZSH_THEME=""

# Auto-completion plugins
source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# pnpm
export PNPM_HOME="/Users/alechoedwin/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Herd injected PHP binary.
export PATH="/Users/alechoedwin/Library/Application Support/Herd/bin/":$PATH

# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/alechoedwin/Library/Application Support/Herd/config/php/82/"

# bun completions
[ -s "/Users/alechoedwin/.bun/_bun" ] && source "/Users/alechoedwin/.bun/_bun"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Generated for pdtm. Do not edit.
export PATH=$PATH:/Users/alechoedwin/.pdtm/go/bin
export PATH="/Users/alechoedwin/.pdtm/go/bin:$PATH"

. "/Users/alechoedwin/.deno/env"
. "$HOME/.local/bin/env"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"

# Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Initialize Starship prompt
eval "$(starship init zsh)"
export PATH="$HOME/bin:$PATH"

# Set Helix as default editor
export EDITOR="hx"
export VISUAL="hx"

# Yazi shell wrapper function
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Aliases
alias c="clear"
alias t="tmux"
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
