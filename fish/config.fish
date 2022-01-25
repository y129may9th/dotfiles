# alias
alias rm rmtrash
alias memo 'vim ~/repos/TIL/TIL/memo.md'
alias til 'code ~/repos/TIL/TIL'

## git alias
alias g "cd (ghq root)/(ghq list | fzf)"
alias hb "hub browse (ghq list | fzf | cut -d "/" -f 2,3)"

## path
set -x PATH $HOME/development/flutter/bin $PATH
