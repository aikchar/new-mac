NOW := $(shell date -u +"%Y%m%d%H%M%S")

.PHONY: warn
warn:
	@echo 'Make backups of these files:'
	@echo '$$HOME/Library/Application Support/Code/User/settings.json'
	@echo 'Then run'
	@echo '    make init'

.PHONY: init
init:
	rsync --verbose --checksum --backup --suffix=-$(NOW) --inplace --perms --one-file-system --progress user_settings.json '/Users/hamza/Library/Application Support/Code/User/settings.json'
	for f in $$(sort -f extensions); do code --install-extension "$${f}"; done
