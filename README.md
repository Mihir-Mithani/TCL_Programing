# TCL Programming — Basics to Advanced

A structured collection of TCL (Tool Command Language) scripts organized topic-by-topic, based on the **[VLSI Academy — TCL Tutorial: Basics to Advanced](https://www.youtube.com/playlist?list=PL1h5a0eaDD3rsGDFnVki_fFEtDWQfXjca)** YouTube playlist.

> TCL is a powerful scripting language widely used in VLSI/EDA tools (Synopsys, Cadence, Mentor). This repo covers the language from the ground up.

---

## 📁 Repository Structure

```
TCL_Programing/
.
├── 01_introduction
│   └── baasic1.tcl
├── 02_variables_and_data_types
│   └── var1.tcl
├── 03_string_operations
├── 04_arithmetic_and_expressions
├── 05_control_flow
├── 06_loops
├── 07_procedures
├── 08_lists
├── 09_arrays
├── 10_dictionaries
├── 11_file_handling
├── 12_regular_expressions
├── 13_error_handling
├── 14_packages_and_namespaces
├── 15_advanced_topics
├── README.md
└── structure.sh
```

---

## 🚀 Getting Started

### Prerequisites

Make sure `tclsh` is installed on your system.

**Linux / macOS:**
```bash
tclsh --version
# if not installed:
sudo apt install tcl        # Debian/Ubuntu
brew install tcl-tk         # macOS
```

**Windows:**
Download and install from [https://www.activestate.com/products/tcl/](https://www.activestate.com/products/tcl/)

### Running a Script

```bash
tclsh 01_introduction/03_first_tcl_program.tcl
```

### Auto-generate the Folder Structure

A `structure.sh` script is included to recreate all folders and empty `.tcl` files:

```bash
chmod +x structure.sh
./structure.sh
```

---

## 📚 Topics Covered

| # | Topic | Key Concepts |
|---|-------|-------------|
| 01 | Introduction | What is TCL, tclsh, first program |
| 02 | Variables & Data Types | `set`, substitution (`$`, `[]`, `\`), quotes vs braces |
| 03 | String Operations | `string length/index/range/compare/match/trim/replace`, `append` |
| 04 | Arithmetic & Expressions | `expr`, math/comparison/logical operators, `incr` |
| 05 | Control Flow | `if`, `if-else`, `if-elseif-else`, `switch` |
| 06 | Loops | `while`, `for`, `foreach`, `break`, `continue` |
| 07 | Procedures | `proc`, arguments, return values, scope, `upvar`, recursion |
| 08 | Lists | `lindex`, `llength`, `lappend`, `lsort`, `lsearch`, `split`, `join` |
| 09 | Arrays | Associative arrays, `array names/size/get/set`, iteration |
| 10 | Dictionaries | `dict create/get/set/for`, nested dicts |
| 11 | File Handling | `open/close`, read/write/append, line-by-line, `file` commands |
| 12 | Regular Expressions | `regexp`, `regsub`, wildcards, groups, VLSI use cases |
| 13 | Error Handling | `catch`, `error`, `try/throw`, `errorInfo`, `errorCode` |
| 14 | Packages & Namespaces | `source`, `package provide/require`, `namespace` |
| 15 | Advanced Topics | `exec`, `glob`, `info`, `format/scan`, EDA tool scripting |

---

## 🎓 Reference

- 📺 Playlist: [TCL Tutorial: Basics to Advanced — VLSI Academy](https://www.youtube.com/playlist?list=PL1h5a0eaDD3rsGDFnVki_fFEtDWQfXjca)
- 📖 Official Docs: [https://www.tcl.tk/doc/](https://www.tcl.tk/doc/)
- 🌐 TCL Wiki: [https://wiki.tcl-lang.org/](https://wiki.tcl-lang.org/)

---

## 👤 Author

**Mihir Mithani**
[GitHub](https://github.com/Mihir-Mithani)
