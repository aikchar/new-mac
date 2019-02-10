.PHONY: warn
warn:
	@echo 'Run'
	@echo '    make init'


.PHONY: init
init:
	if ! test -f /etc/os-release; then sudo port select --set python3 python37; fi
	python3 -m pip install --user -U pip
	python3 -m pip install --user -U pipenv
	python3 -m pip install --user -U black
	python3 -m pip install --user -U ansible
	python3 -m pip install --user -U nikola
