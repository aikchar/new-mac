GIT_BRANCH := $(shell git branch | grep \* | cut -d ' ' -f2)

.PHONY: warn
warn:
	@echo This is optimized for macOS and for me
	@echo Read README.md for more information
	@grep -o -E '^[-a-zA-Z0-9]+:' Makefile | grep -o -E '^[-a-zA-Z0-9]+'

.PHONY: there-be-hackers
there-be-hackers:
	cd homebrew && make install-homebrew
	cd homebrew && make install-packages
	cd git && make backup init
	cd zsh && make init
	cd editorconfig && make init
	cd vscode && make init
	cd vim && make init

.PHONY: git-push
git-push:
	git push -u origin $(GIT_BRANCH) || (git remote add origin git@github.com:aikchar/new-mac.git && git push -u origin $(GIT_BRANCH))
	git push -u gitlab $(GIT_BRANCH) || (git remote add gitlab git@gitlab.com:aikchar/new-mac.git && git push -u gitlab $(GIT_BRANCH))
