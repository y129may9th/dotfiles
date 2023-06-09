source $HOME/.zshenv
eval "$(rbenv init -)"

## alias
alias url='~/get_url.sh'
alias g='cd $(ghq root)/$(ghq list | fzf)'

## alias
alias vi='/usr/bin/vim'
alias xdd='rm ~/Library/Developer/Xcode/DerivedData/*'
alias cdd='cd ~/Desktop'
alias readme='code README.md'
alias gemfile='code Gemfile'
alias makefile='code Makefile'
alias la='ls -alF'
alias ll='ls -lF'
alias brewup='brew update && brew upgrade && brew cleanup && brew doctor'
alias cat=bat
alias listen='sudo lsof -i -P | grep "LISTEN"'
alias cp='cp -i'
alias mv='mv -i'
alias dcom='docker-compose'
alias rm='trash -F'
alias thankyou="echo \"You're welcome!\""

## git alias
alias gaa='git add -A'
alias gb='git branch -a'
alias gbd='git branch -D'
alias gc='git commit -m'
alias gcae='git commit --allow-empty -m Initial'
alias gcob='git checkout -b'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcod='git checkout develop'
alias gcurrent="git branch | grep -e '^\\* ' | sed -e 's/^\\* //g'"
alias gd='git diff'
alias gf='git fetch --prune'
alias gl='git pull && git fetch --prune && gbm'
alias gbm="git branch --merged | grep -vE '^\*|master|develop' | xargs -I '{}' git branch -d '{}'"
alias glf="git fetch && git reset --hard origin/(gcurrent)"
alias glo='git log --oneline --decorate --graph'
alias gpf='git push --force-with-lease'
alias gp='git push -u origin HEAD'
alias grm='git rebase master'
alias gsub='git submodule update --init --recursive && git submodule sync'
alias gtag='git tag -l --sort=-v:refname | head -n 25'
alias grh='git clean -df && git reset --hard'
alias grhh='git reset --hard HEAD^ && git clean -df'

## hub
alias hb='hub browse $(ghq list | fzf | cut -d "/" -f 2,3)'
alias hcob='hub checkout -b'

## bundle alias
alias b='bundle'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias bl='bundle list'

## import other zsh files
ZSH_DIR="${HOME}/.zsh"
if [ -d $ZSH_DIR ] && [ -r $ZSH_DIR ] && [ -x $ZSH_DIR ]; then
    for file in ${ZSH_DIR}/**/*.zsh; do
        [ -r $file ] && source $file
    done
fi
