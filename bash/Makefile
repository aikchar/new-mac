SHELLSDIR := ~/.shells
BASHDIR := $(SHELLSDIR)/bash
NOW := $(shell date -u +"%Y%m%d%H%M%S")

.PHONY: warn
warn:
	@echo 'Make backups of these files:'
	@echo '~/.bash_logout'
	@echo '~/.bash_profile'
	@echo '~/.bashrc'
	@echo '~/.profile'
	@echo 'Then run'
	@echo '    make init'

.PHONY: init
init: | $(BASHDIR)
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress env $(BASHDIR)/env
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress interactive $(BASHDIR)/interactive
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress login $(BASHDIR)/login
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress logout $(BASHDIR)/logout
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress bash_logout ~/.bash_logout
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress bash_profile ~/.bash_profile
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress bashrc ~/.bashrc
	rsync --verbose --checksum --backup --suffix=-$(NOW) --perms --one-file-system --progress profile ~/.profile

$(SHELLSDIR):
	mkdir $(SHELLSDIR)

$(BASHDIR): | $(SHELLSDIR)
	mkdir $(BASHDIR)
