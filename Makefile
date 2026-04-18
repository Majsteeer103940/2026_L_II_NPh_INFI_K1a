VENV=.venv
PYTHON=$(VENV)/Scripts/python.exe
PIP=$(VENV)/Scripts/pip.exe

deps:
	$(PIP) install -r requirements.txt; \
	$(PIP) install -r test_requirements.txt
lint:
	$(PYTHON) -m flake8 hello_world test
test:
	$(PYTHON) -m pytest
run:
	$(PYTHON) -m pytest

.PHONY: deps lint test run