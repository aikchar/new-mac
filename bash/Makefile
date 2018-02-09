SHELLSDIR := ~/.shells
BASHDIR := $(SHELLSDIR)/bash

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
	cp env $(BASHDIR)/env
	cp interactive $(BASHDIR)/interactive
	cp login $(BASHDIR)/login
	cp logout $(BASHDIR)/logout
	cp bash_logout ~/.bash_logout
	cp bash_profile ~/.bash_profile
	cp bashrc ~/.bashrc
	cp profile ~/.profile

$(SHELLSDIR):
	mkdir $(SHELLSDIR)

$(BASHDIR): | $(SHELLSDIR)
	mkdir $(BASHDIR)
