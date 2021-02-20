# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
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
alias dockerc="docker-compose"
alias gotags="find . -name '*.go' ! -path './build/*' ! -path './vendor/*' | xargs gotags >> tags"
alias fixssh='eval $(tmux showenv -s SSH_AUTH_SOCK)'
