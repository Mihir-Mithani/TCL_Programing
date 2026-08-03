# Requirements

This repository does not use a package manager — there is no `package.json`,
`requirements.txt`, or similar manifest, which is why GitHub's dependency
graph shows "No dependencies found." That's expected: the only thing needed
to run the examples in this repo is the Tcl interpreter itself.

## Required

- **Tcl** (the `tclsh` interpreter) — version **8.6** or later recommended.
  No external Tcl packages are required to run the examples in this repo.

## Installing Tcl

**Ubuntu / Debian**
```bash
sudo apt-get update
sudo apt-get install tcl
```

**Fedora**
```bash
sudo dnf install tcl
```

**macOS (Homebrew)**
```bash
brew install tcl-tk
```

**Windows**
Install [ActiveTcl](https://www.activestate.com/products/tcl/) or use Tcl via
[MSYS2](https://www.msys2.org/):
```bash
pacman -S mingw-w64-x86_64-tcl
```

## Verifying Your Installation

```bash
tclsh
% info patchlevel
```

This should print your installed Tcl version (e.g. `8.6.13`).

## Running the Examples

Each topic folder contains standalone `.tcl` scripts. Run any script with:

```bash
tclsh path/to/script.tcl
```

## Shell Script

`structure.sh` at the repository root is a plain Bash script used to
generate/print the folder structure. It requires only a standard POSIX
shell (`bash` or `sh`) — no additional dependencies.
