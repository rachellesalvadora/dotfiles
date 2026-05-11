export PATH="$HOME/bin:$HOME/.local/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"

if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

if [ -f "$HOME/.aliases.zsh" ]; then
  source "$HOME/.aliases.zsh"
fi

if [ -f "$HOME/.zsh.local" ]; then
  source "$HOME/.zsh.local"
fi

