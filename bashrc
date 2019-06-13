# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

gpass() {
	openssl rand $1 | openssl base64 -A | cut -c -$1
}

alias vimgc="vim '+/\(<<<<<<<.*\|=======.*\|>>>>>>>.*\)' $(git diff --name-only | sort -u)"

alias vimx="vim +Vex"
