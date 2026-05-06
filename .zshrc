# --- PATH ---
export PATH="/opt/homebrew/bin:$HOME/.local/bin:$PATH"

# --- Antidote (Plugin Manager) ---
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

# --- History ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

# --- Completion ---
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
# fzf-tabの設定（補完候補をfzfで選択可能にする）
zstyle ':fzf-tab:*' fzf-command fzf

# --- Tools Initialization ---
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(fnm env --use-on-cd)"

# --- Aliases ---
alias ls='eza --icons --git'
alias la='eza -a --icons --git'
alias ll='eza -ahl --icons --git'
alias cat='bat'
alias cd='z'

# --- Basic Options ---
setopt AUTO_CD
setopt CORRECT
