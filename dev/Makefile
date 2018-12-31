.PHONY: warn
warn:
	@echo 'Run'
	@echo '    make init'


.PHONY: init
init:
	sudo port select --set python3 python37
	python3 -m pip install --user -U pip
	python3 -m pip install --user -U pipenv
	python3 -m pip install --user -U black
	python3 -m pip install --user -U ansible
	python3 -m pip install --user -U nikola
	$(HOME)/.poetry/bin/poetry self:update || (curl -OsSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py && python3 get-poetry.py && rm -f get-poetry.py)
