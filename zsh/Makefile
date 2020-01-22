SHELLSDIR := ~/.shells
ZSHDIR := $(SHELLSDIR)/zsh
NOW := $(shell date -u +"%Y%m%d%H%M%S")

.PHONY: warn
warn:
	@echo 'Make backups of these files:'
	@echo '~/.zshrc'
	@echo '~/.zprofile'
	@echo 'Then run'
	@echo '    make init'

.PHONY: init
init: | ~/.oh-my-zsh
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress zshrc ~/.zshrc
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress zshenv ~/.zshenv

~/bin:
	mkdir ~/bin

~/bin/install-ohmyzsh.sh: | ~/bin
	curl -fsSL -o ~/bin/install-ohmyzsh.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

~/.oh-my-zsh: | ~/bin/install-ohmyzsh.sh
	sh ~/bin/install-ohmyzsh.sh
