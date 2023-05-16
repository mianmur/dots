function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{grey}%n%f %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '


zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

function cd_up() {
  cd $(printf "%0.s../" $(seq 1 $1 ));
}
alias 'cd..'='cd_up'

alias ..='cd ..'
alias school='cd ~/Documents/SCHOOL/'
alias ls='ls -CF -G'
alias ll='ls -lisa -G'
alias free='free -mt'
alias ps='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias histg='history 200 | grep'
alias myip='curl ipv4.icanhazip.com'
alias grep='grep --color=auto'
alias l="ls -A -G"
alias vi="vim"
alias gpp="g++"
alias gay="toilet -f future -t --g"
alias metal="toilet -f future -t --m"
alias toiler="toilet -f future -t"
alias ncmp="ncmpcpp"
