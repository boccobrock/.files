alias sound='alsamixer'
alias open='xdg-open'
alias ls='ls --color=always'
alias la='ls -la --color=always'
PATH=$PATH:/usr/local/heroku/bin/
PATH=$PATH:~/.gem/ruby/2.1.0/bin/
PATH=$PATH:~/bin/
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

fpath+=( ~/.files/zsh-prompt-powerline/ )
autoload promptinit ; promptinit
zstyle ':prompt:powerline:ps1' default-sh-level 3
prompt powerline
