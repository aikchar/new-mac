NOW := $(shell date -u +"%Y%m%d%H%M%S")

.PHONY: warn
warn:
	@echo 'Make backups of these files:'
	@echo '~/.vimrc'
	@echo 'Then run'
	@echo '    make init'

.PHONY: init
init:
	rsync --verbose --checksum --backup --suffix=-$(NOW) --inplace --perms --one-file-system --progress vimrc ~/.vimrc
