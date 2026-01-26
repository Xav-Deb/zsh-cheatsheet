# fzf

## Basic Usage

- `fzf` — Start fuzzy finder on files in current directory
- `fzf -m` — Enable multiple selection (use Tab to select)
- `fzf --reverse` — Layout from top to bottom
- `fzf --height 40%` — Open fzf in a window of specific height

## Preview

- `fzf --preview 'cat {}'` — Show a preview of the selected file
- `fzf --preview 'bat --color=always {}'` — Preview with syntax highlighting (requires bat)
- `fzf --preview '[[ $(file --mime -b {}) =~ "binary" ]] && echo "Binary file" || (bat --color=always {})'` — Smart preview

## Scripts and Integration

- `find . -type f | fzf` — Fuzzy search among results from a command
- `ps -ef | fzf` — Search for a process interactively
- `history | fzf` — Search through command history
- `ls | fzf --bind 'enter:execute(vim {})+accept'` — Directly open the selected file in Vim
