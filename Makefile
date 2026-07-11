.DEFAULT_GOAL := help

.PHONY: install update notebook docs serve lint lintfix formatcheck format typecheck fix test check coverage ci deptree projtree trees precommit run clean

.DELETE_ON_ERROR:

MAN = uv
RUN = $(MAN) run
PYTHON = $(RUN) python
RUFF = $(RUN) ruff
PYTEST = $(RUN) pytest
MYPY = $(RUN) mypy

help:
	@echo "Available targets:"
	@echo "  install      Install project dependencies"
	@echo "  update       Upgrade dependencies"
	@echo "  notebook     Jupyter notebook"
	@echo "  docs         Build docs"
	@echo "  serve        Serve docs"
	@echo "  lint         Code linting"
	@echo "  lintfix      Auto-fix lint issues"
	@echo "  formatcheck  Check code format"
	@echo "  format       Format code to standards"
	@echo "  typecheck    Type checking"
	@echo "  fix          Auto-fix lint issues and format code to standards"
	@echo "  test         Run tests"
	@echo "  check        Lint, format check, type check, and tests"
	@echo "  coverage     Run tests with coverage report"
	@echo "  ci           Run checks and coverage"
	@echo "  deptree      Make dependency tree"
	@echo "  projtree     Make project tree"
	@echo "  trees        Make all trees"
	@echo "  precommit    Update trees, fix whitespace/newlines, run all hooks"
	@echo "  run          Run the application"
	@echo "  clean        Remove generated files"

install:
	$(MAN) sync
	$(RUN) pre-commit install
	$(MAKE) trees

update:
	$(MAN) lock --upgrade
	$(MAN) sync
	$(MAKE) trees

notebook:
	$(RUN) jupyter lab

docs:
	$(RUN) mkdocs build

serve:
	$(RUN) mkdocs serve

lint:
	$(RUFF) check .

lintfix:
	$(RUFF) check . --fix

formatcheck:
	$(RUFF) format --check .

format:
	$(RUFF) format .

fix: lintfix format

typecheck:
	$(MYPY) .

test:
	$(PYTEST)

check: lint formatcheck typecheck test

coverage:
	$(PYTEST) \
		--cov=bitchaser \
		--cov-report=term-missing \
		--cov-report=html

ci: lint formatcheck typecheck coverage

deptree:
	mkdir -p trees
	$(MAN) tree > trees/dep.txt

projtree:
	tree \
	-I "site|trees|.venv|.git|.mypy_cache|.pytest_cache|.ruff_cache|__pycache__|htmlcov" \
	> trees/proj.txt

trees: deptree projtree
	$(PYTHON) scripts/update_section.py

precommit: trees
	$(RUN) pre-commit run --all-files

run:
	$(PYTHON) -m bitchaser.main

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	find . -name ".DS_Store" -delete
	find . -type d -name ".ipynb_checkpoints" -exec rm -rf {} +
	find . -name "*.nbconvert.ipynb" -delete
	rm -rf .pytest_cache .mypy_cache .ruff_cache
	rm -rf .coverage htmlcov
	rm -rf dist build *.egg-info
	rm -rf site
# 	rm -rf trees
