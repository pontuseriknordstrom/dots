# disable greeting
set -g fish_greeting

# environment
set -gx EDITOR helix
set -gx VISUAL helix
set -gx TERMINAL foot

# aliases
alias l "ls -la"
alias g git
alias gs "git status"
alias gc "git commit"
alias gp "git push"
alias ga "git add"
alias gd "git diff"
alias rebuild "cd ~/Dotfiles && git add -A && sudo nixos-rebuild switch --flake .#descartes"
alias cleanup "sudo nix-collect-garbage -d"
alias update "sudo nix flake update"

# starship prompt
starship init fish | source

# direnv
direnv hook fish | source
