# aliases for admin tasks

# grabs the disk usage in the current directory
#alias usage='du -ch | grep total'
alias usage='du -ch 2> /dev/null |tail -1'

# gets the total disk usage on your machine
#alias totalusage='df -hl --total | grep total'

# shows the individual partition usages without the temporary memory values
#alias partusage='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs'

# gives you what is using the most space. Both directories and files. Varies on
# current directory
#alias most='du -hsx * | sort -rh | head -10'

# Shows network file connections
alias connections='sudo lsof -n -P -i +c 15'

# quickly list all open ports
alias ports='netstat -tulanp'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'


# analyze memory and processes
# pass options to free
alias meminfo='free -m -l -t'

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
#alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias psmem10='ps auxf | head -n1 && ps auxf | sort -nr -k 4 | head -10'

# get top process eating cpu
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

# ps grep integration
# greps for process name "psg processname"
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'

# Get cpu info
#alias cpuinfo='lscpu'

# print my public IP
alias myip='curl https://ipinfo.io/ip && echo'


# I have to look up mac addresses quite often so I created this
alias oui="curl -s https://standards-oui.ieee.org/oui/oui.txt | grep"

