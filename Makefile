.PHONY: warn
warn:
	@echo This is optimized for macOS and for me
	@echo Read README.md for more information

.PHONY: there-be-hackers
there-be-hackers:
	cd macports && make install-ports
	cd git && make init
	cd bash && make init
	cd editorconfig && make init
	cd vscode && make init
	cd vim && make init
	cd dev && make init
