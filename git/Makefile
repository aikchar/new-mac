NOW := $(shell date -u +"%Y%m%d%H%M%S")

.PHONY: warn
warn:
	@echo 'Make backups of these files:'
	@echo '~/.git-prompt.sh'
	@echo '~/.gitconfig'
	@echo '~/.gitmessage'
	@echo 'Then run'
	@echo '    make init'

.PHONY: init
init:
	rsync --verbose --checksum --backup --suffix=-$(NOW) --inplace --perms --one-file-system --progress git-prompt.sh ~/.git-prompt.sh
	rsync --verbose --checksum --backup --suffix=-$(NOW) --inplace --perms --one-file-system --progress gitconfig ~/.gitconfig
	rsync --verbose --checksum --backup --suffix=-$(NOW) --inplace --perms --one-file-system --progress gitmessage ~/.gitmessage
