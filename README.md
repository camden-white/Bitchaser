# Bitchaser

<!-- ## Goal
14-year analysis of BTC/USD market value OHLC from 07/17/2010 to 06/27/2024
Long-term statistical model tested against 2-year data from 06/27/2024 to 06/27/2026
Short-term time-series forecasting model
Application of this model to future trajectory of BTC/USD -->

BitChaser is a research project that investigates long-term and short-term forecasting of the Bitcoin (BTC/USD) market using statistical modeling and deep learning. The project analyzes historical daily OHLC data, develops interpretable long-horizon forecasting models along with short-horizon time-series prediction models.

## Status

🚧 Active development

## Features

- Historical Bitcoin OHLC analysis
- Statistical forecasting models
- Data visualization
- Reproducible research workflow
- Documentation with MkDocs

---

## Project Structure

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

19 directories, 32 files
```
<!-- PROJECT_TREE_END -->

---

## Common Commands

| Command | Description |
|---------|-------------|
| `make install` | Install dependencies |
| `make run` | Run the application |
| `make notebook` | Launch JupyterLab |
| `make docs` | Serve documentation |
| `make test` | Run tests |
| `make coverage` | Generate coverage report |
| `make fix` | Format and lint code |
| `make check` | Run all quality checks |

---

## Installation

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
make docs
make serve
```

---

## Development

### Workflow
1. `make fix` Auto-fix lint issues and format code to standards
2. `make check` (or `make ci`) Lint, format check, type check, and tests (and coverage)
3. `make precommit` update trees, fix whitespace/newlines, run all hooks
4. `git diff` Review any changes since last commit (q to exit)
5. `git add .` Add all files for commit
6. `git commit -m "[message]"` Commit files with message explaining change
7. `git push` Uploads local commits to GitHub

Check code quality

```bash
make check
```

Automatically fix formatting

```bash
make fix
```

Run tests

```bash
make test
```

Generate coverage report

```bash
make coverage
```

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

- Python
- MkDocs
- pytest
- Ruff
- mypy
- uv

---

## Data

Historical daily BTC/USD OHLC data from July 2010 through June 2024 is stored in
`data/raw/BTCUSD_OHLC.csv`.

---

## Roadmap

- [ ] 1
- [ ] 2
- [ ] 3
- [ ] 4
- [ ] 5
- [ ] 6

---

## License

Licensed under the Apache 2.0 License.

See `LICENSE` for details.

---

## Author

**Camden R. White**

M.A.S. Applied Statistics & Data Science
University of California, Los Angeles

B.S. Mathematics
Oregon State University
