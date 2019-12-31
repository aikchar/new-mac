.PHONY: warn
warn:
	@echo 'Run'
	@echo '    make install-ports'

.PHONY: install-ports
install-ports:
	@# https://unix.stackexchange.com/a/174717
	@# https://stackoverflow.com/a/52217891
	yes | sudo port install $$(awk '/^[^#]/ {print $$1}' ports.txt | tr '\n' ' ')
	sudo port select --set terraform terraform0.12
