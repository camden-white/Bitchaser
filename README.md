# Bitchaser

![Python](https://img.shields.io/badge/Python-3.14-blue)
![mypy](https://img.shields.io/badge/Type%20Checking-mypy-yellow)
![Ruff](https://img.shields.io/badge/Lint-Ruff-red)
![Docs](https://img.shields.io/badge/Docs-MkDocs-526CFE)
![Status](https://img.shields.io/badge/Status-Active%20Development-orange)
![License](https://img.shields.io/badge/License-Apache%202.0-green)

<!-- Description -->
BitChaser is a research project that investigates long-term and short-term forecasting of the Bitcoin (BTC/USD) market using statistical modeling and deep learning. The project analyzes historical daily OHLC data, develops interpretable long-horizon forecasting models along with short-horizon time-series prediction models.

## Status

🚧 Active development. Core project structure is complete; forecasting models are currently under implementation.

## Features

- Historical Bitcoin OHLC analysis
- Statistical forecasting models
- Data visualization
- Reproducible research workflow
- Documentation with MkDocs

---

## Installation

Requirements
- Python 3.14
- uv 0.11

Clone the repository

```bash
git clone https://github.com/camden-white/bitchaser.git
cd bitchaser
```

Install dependencies

```bash
make install
```

---

## Usage

Run the main program

```bash
make run
```

Launch Jupyter

```bash
make notebook
```

Serve documentation

```bash
make serve
```

---

## Development

### Workflow
1. `git status` (optional)\
Review unstaged changed files

2. `make fix`\
Auto-fix lint issues and format code to standards

3. `make check` (or `make ci`)\
Lint, format check, type check, and tests (and coverage)

4. `make precommit`\
update trees, fix whitespace/newlines, run all hooks

5. `git diff` (optional)\
Review any changes since last commit (q to exit)

6. `git add .`\
Add all files for commit

7. `git commit -m "[message]"`\
Commit files with message explaining change

8. `git push`\
Upload local commits to GitHub

9. `git log` (optional)\
Review commit logs

### Makefile Commands

| Command | Description |
|---------|-------------|
| `help` | Print Makefile targets |
| `install` | Install project dependencies |
| `update` | Upgrade dependencies |
| `notebook` | Jupyter notebook |
| `docs` | Build documentation |
| `serve` | Serve documentation |
| `lint` | Code linting |
| `lintfix` | Auto-fix lint issues |
| `formatcheck` | Check code format |
| `format` | Format code to standards |
| `typecheck` | Type checking |
| `fix` | Auto-fix lint issues and format code to standards |
| `test` | Run tests |
| `check` | Lint, format check, type check, and tests |
| `coverage` | Run tests with coverage report |
| `ci` | Run checks and coverage |
| `deptree` | Make dependency tree |
| `projtree` | Make project tree |
| `trees` | Make all trees |
| `precommit` | Update trees, fix whitespace/newlines, run all hooks |
| `run` | Run the application |
| `clean` | Remove generated files |

---

---


## Project Structure

### Main directories

| Directory | Description |
|---------|-------------|
| data/ | Raw and processed datasets |
| models/ | Saved trained models |
| reports/ | Figures and analysis |
| notebooks/ | Exploratory work |
| src/ | Python package |
| tests/ | Unit tests |

### Project Tree

<!-- PROJECT_TREE_START -->
```text
.
├── CHANGELOG.md
├── CONTRIBUTING.md
├── Makefile
├── README.md
├── data
│   ├── processed
│   └── raw
│       └── BTCUSD_OHLC.csv
├── docs
│   └── index.md
├── mkdocs.yaml
├── models
├── notebooks
├── pyproject.toml
├── reports
│   └── figures
├── scripts
│   └── update_section.py
├── src
│   └── bitchaser
│       ├── __init__.py
│       ├── config.py
│       ├── data
│       │   ├── __init__.py
│       │   ├── load.py
│       │   └── preprocess.py
│       ├── evaluation
│       │   ├── __init__.py
│       │   └── metrics.py
│       ├── features
│       │   ├── __init__.py
│       │   └── indicators.py
│       ├── inference
│       │   ├── __init__.py
│       │   └── predict.py
│       ├── main.py
│       ├── models
│       │   ├── __init__.py
│       │   ├── neural_net.py
│       │   └── statistical.py
│       ├── training
│       │   ├── __init__.py
│       │   └── train.py
│       └── utils.py
├── tests
│   ├── __init__.py
│   ├── test_data.py
│   ├── test_features.py
│   └── test_models.py
└── uv.lock
```
<!-- PROJECT_TREE_END -->

---

## Documentation

Documentation is built with MkDocs.

Serve locally with

```bash
make docs
make serve
```

---

## Technologies

- MkDocs
- mypy
- pytest
- Python
- Ruff
- uv

---

## Data

Historical daily BTC/USD OHLC data from July 2010 through June 2024 is stored in
`data/raw/BTCUSD_OHLC.csv`.

---

## Roadmap

- [ ] Long-horizon model of BTC/USD support and resistance
- [ ] Periodic trends in BTC/USD
- [ ] Regressions between periods
- [ ] Long-horizon periodic forcasting
- [ ] Daily OHLC analysis
- [ ] OHLC next-day prediction
- [ ] OHLC multi-day prediction

---

## License

Licensed under the Apache 2.0 License.

See `LICENSE` for details.

---

## Author

Camden R. White

University of California, Los Angeles\
*M.A.S. Applied Statistics & Data Science*

Oregon State University\
*B.S. Mathematics*

---
