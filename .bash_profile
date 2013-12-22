function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

GREEN="\[\033[0;32m\]"

PS1="\w$GREEN \$(parse_git_branch)\[\033[0m\]$ "

#aliases
alias gs="git status"
alias gc="git commit -avm"
alias gco="git checkout"
alias gpo="git push origin"
alias gPo="git pull origin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=$PATH:/Developer/Android/adt-bundle-mac-x86/sdk/tools
export PATH=$PATH:/Developer/Android/adt-bundle-mac-x86/sdk/platform-tools
