# Using ChipFoundry CLI (cf)

The `cf` command needs to be run from within the virtual environment to avoid architecture mismatch issues.

## Quick Start

```bash
cd /Users/jeffdi/Projects/nydesign/nydesign-ci2511
source .venv/bin/activate
cf --help
```

## Why?

The system-wide `cf` command uses Python 3.9 which has an architecture mismatch (x86_64 vs arm64) with the cryptography library. The virtual environment has the correct Python 3.13 installation with properly compiled packages.

## Alternative: Create an alias

Add this to your `~/.zshrc`:

```bash
alias cf='source /Users/jeffdi/Projects/nydesign/nydesign-ci2511/.venv/bin/activate && cf'
```

Then you can run `cf` from anywhere, and it will automatically use the venv version.

