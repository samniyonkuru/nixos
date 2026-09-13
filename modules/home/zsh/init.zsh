# Prompt
PROMPT='%F{#d79921}%~%f
%F{#cc6666}>%f '

# Editor
export EDITOR=nvim

# Carapace
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense'
source <(carapace _carapace)

# Case-insensitive completion
setopt NO_CASE_GLOB

zstyle ':completion:*' matcher-list \
  'm:{[:lower:]}={[:upper:]}' \
  'r:|[._-]=* r:|=*' \
  'l:|=* r:|=*'

# FZF
source <(fzf --zsh)

# Devenv
eval "$(devenv hook zsh)"

# nix-shell -> zsh
any-nix-shell zsh --info-right | source /dev/stdin
