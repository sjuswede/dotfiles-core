# aliases which are useful

# Get the weather!
alias rain='curl -4 http://wttr.in/Linkoping'

# make wget default to continue if file exists
alias wget='wget -c'

# longer ls
alias ls='ls --color=auto'
alias ll="ls -alh"
# alias ll='ls -alF'

# find latest modified files
alias lt="ls -alrt"

# file tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"


# Linux version of macOS pbcopy and pbpaste
alias pbcopy='wl-copy'
alias pbpaste='wl-paste'
# X11 versions
#alias pbcopy='xsel --clipboard --input'
#alias pbpaste='xsel --clipboard --output'

# common mistypings I do
alias cd..='cd ..'

# always create all subdirectories
alias mkdir='mkdir -p'

# useful shortcuts
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%Y-%m-%d"'

# set some nice defaults
alias df='df -H'
alias du='du -ch'

