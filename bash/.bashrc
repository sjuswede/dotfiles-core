# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.cargo/bin" ]]; then
    PATH="$HOME/.cargo/bin:$PATH"
fi
export PATH



##### History Control

# size of bash history
# if set as "HISTSIZE=" it means infinite
HISTSIZE=10000
HISTFILESIZE=100000

# commands to not store in history
HISTIGNORE="ls:ll:lt:exit:clear:cd:top:htop*:history*:rm*:fg:bg"

# don't put duplicate lines or lines starting with space
# in the history. See bash(1) for more options
HISTCONTROL=ignoreboth:erasedups

# append to the history file, don't overwrite it
shopt -s histappend

# turn on extended globs
# https://mywiki.wooledge.org/glob#extglob
shopt -s extglob

# write a multi line command in a single line
shopt -s cmdhist

# allow ctrl-s to search forward instead of hanging terminal
stty -ixon

# write all commands immediately
# also sync if several terminals run at once
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

##### End History Control



# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
. "/home/jesper/.deno/env"
source /home/jesper/.local/share/bash-completion/completions/deno.bash

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

LESSOPEN="|lesspipe.sh %s"; export LESSOPEN

# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/bin/liquidprompt/liquidprompt && \
	source ~/bin/liquidprompt/themes/unfold/unfold.theme && \
	lp_theme unfold

unset rc

