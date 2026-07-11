# Bitchaser

## Goal
14-year analysis of BTC/USD market value OHLC from 07/17/2010 to 06/27/2024
Long-term statistical model tested against 2-year data from 06/27/2024 to 06/27/2026
Short-term time-series forecasting model
Application of this model to future trajectory of BTC/USD

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
(old tree will be replaced)
```
<!-- PROJECT_TREE_END -->

---

## Installation

Clone the repository

```bash
git clone https://github.com/camden-white/bitchaser.git
cd ??
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
0. `⌥ ⌘ S` Save All
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

## Roadmap

- [ ] Statistical forecasting models
- [ ] Deep learning architecture
- [ ] Hyperparameter tuning
- [ ] Model evaluation framework
- [ ] Interactive visualizations
- [ ] Model comparison dashboard

---

## License

Licensed under the Apache 2.0 License.

See `LICENSE` for details.

---

## Author

Camden R. White

Masters of Applied Statistics and Data Science, UCLA
B.S. Mathematics, Oregon State University
