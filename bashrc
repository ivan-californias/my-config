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

# Open vim with all files in conflict when rebasing or merging
vimgc() {
	vim "+/\(<<<<<<<.*\|=======.*\|>>>>>>>.*\)" $(git diff --name-only --diff-filter=U | sort -u)
}

# Open vim with left explorer
alias vimx="vim +Vex"
