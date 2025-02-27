
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
export PATH="$HOME/.cargo/bin:$PATH"
# End of lines added by compinstall
alias ls="eza"
# Configure Zellij
export ZELLIJ_AUTO_ATTACH=true
export ZELLIJ_AUTO_EXIT=true
eval "$(zellij setup --generate-auto-start zsh)"
# Configure Asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# Configure Home bin
export PATH="$HOME/bin:$PATH"

# Cofigure History
HISTFILE=~/.zsh_history

# Configure direnv
eval "$(direnv hook zsh)"

if [ -f "$HOME/.exportsrc" ]; then
    source "$HOME/.exportsrc"
else
    print "${HOME}/.exportsrc not found".
fi

# Set prompt
PS1="%~:"
