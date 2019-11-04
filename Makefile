backup_dir := backup/`date +%Y%m%d%H%M%S`
all: install

install:
	cp vimrc ~/.vimrc
	cp tmux.conf ~/.tmux.conf
	cp bashrc ~/.bashrc

backup:
	@mkdir -p $(backup_dir)
	@cp ~/.vimrc $(backup_dir)/vimrc || echo "no vimrc"
	@cp ~/.tmux.conf $(backup_dir)/tmux.conf || echo "no tmuxconf"
	@cp ~/.bashrc $(backup_dir)/bashrc || echo "no bashrc"

.PHONY: backup
