# TCL Programming — Basics to Advanced

A structured collection of TCL (Tool Command Language) scripts organized topic-by-topic, based on the **[VLSI Academy — TCL Tutorial: Basics to Advanced](https://www.youtube.com/playlist?list=PL1h5a0eaDD3rsGDFnVki_fFEtDWQfXjca)** YouTube playlist.

> TCL is a powerful scripting language widely used in VLSI/EDA tools (Synopsys, Cadence, Mentor). This repo covers the language from the ground up.

---

## 📁 Repository Structure

```
tcl/
├── 01_introduction/
│   └── baasic1.tcl
├── 02_variables_and_data_types/
│   └── var1.tcl
├── 03_arithmetic_ops/
│   └── expr.tcl
├── 04_condition/
│   └── if.tcl
├── 04_loops/
│   ├── for.tcl
│   └── while.tcl
├── 05_array/
│   ├── array1.tcl
│   └── array2.tcl
├── 05_associative_array/
│   ├── as_array.tcl
│   └── as_array1.tcl
├── 05_for_each/
│   └── for_each1.tcl
├── 06_element_search/
│   ├── search.tcl
│   └── search_associative.tcl
├── 07_exec/
│   ├── escape.tcl
│   └── exec1.tcl
├── 08_string/
│   ├── string1.tcl
│   ├── string_index.tcl
│   ├── string_length.tcl
│   ├── string_range.tcl
│   ├── string_trim.tcl
│   └── string_tolower.tcl
├── 09_data_structure/
│   └── list.tcl
├── 10_data_structure/
│   └── lreplace.tcl
├── 12_file_handling/
│   ├── read.tcl
│   └── write.tcl
├── 15_proc/
│   ├── fun1.tcl
│   └── fun2.tcl
├── assignment/
│   ├── 1.tcl - 68.tcl (68 assignment files)
│   ├── data.txt
│   ├── files.sh
│   ├── git_push.sh
│   ├── rename.sh
│   ├── run_file.sh
│   └── template.tcl
├── 1.tcl - 68.tcl (various assignment files at root)
├── hello.tcl
├── TCL_LEARNING_GUIDE.md
├── TCL_Learning.pptx
├── structure.sh
├── plan.md
└── README.md
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
tclsh 15_proc/fun1.tcl
```

### Assignment Scripts

There are 68 assignment scripts in the `assignment/` directory and at the root level. Run them with:

```bash
tclsh assignment/1.tcl
# or
tclsh 1.tcl
```

---

## 📚 Topics Covered

| Topic | Directory / Files | Description |
|-------|-------------------|-------------|
| **Introduction** | `01_introduction/` | Basic TCL syntax, hello world |
| **Variables & Data Types** | `02_variables_and_data_types/` | Variables, set, unset |
| **Arithmetic Operations** | `03_arithmetic_ops/` | expr command, math operations |
| **Conditionals** | `04_condition/` | if/else/switch statements |
| **Loops** | `04_loops/` | for, while loops |
| **Arrays** | `05_array/` | Array creation, access, iteration |
| **Associative Arrays (Dict)** | `05_associative_array/` | Dictionary operations |
| **Foreach Loop** | `05_for_each/` | foreach iteration |
| **Element Search** | `06_element_search/` | Searching in arrays/lists |
| **Exec Command** | `07_exec/` | External command execution, escaping |
| **String Manipulation** | `08_string/` | String operations (length, index, range, trim, case) |
| **Data Structures (Lists)** | `09_data_structure/`, `10_data_structure/` | List operations, lreplace |
| **File Handling** | `12_file_handling/` | File read/write operations |
| **Procedures/Functions** | `15_proc/` | proc, args, return values |
| **Assignments (1-68)** | `assignment/` + root | 68 practice assignments covering all topics |
| **Utilities** | `assignment/*.sh` | Helper scripts for file management |

---

## 📋 Assignment Files

The repository contains **68 assignment scripts** (1.tcl through 68.tcl) covering various TCL topics:
- Basic syntax and variables
- Arithmetic operations
- Conditionals (if/else)
- Loops (for, while, foreach)
- Arrays and lists
- Procedures
- File handling
- String manipulation
- And more...

### Running Assignments

```bash
# Run a specific assignment
tclsh assignment/1.tcl

# Run all assignments using the helper script
./assignment/run_file.sh
```

---

## 🛠 Utility Scripts

The `assignment/` directory contains helper scripts:

| Script | Purpose |
|--------|---------|
| `run_file.sh` | Run assignment files |
| `files.sh` | List files |
| `rename.sh` | Rename files |
| `git_push.sh` | Git push helper |
| `template.tcl` | Template for new assignments |

---

## 📚 Learning Resources

- 📺 **Playlist:** [TCL Tutorial: Basics to Advanced — VLSI Academy](https://www.youtube.com/playlist?list=PL1h5a0eaDD3rsGDFnVki_fFEtDWQfXjca)
- 📖 **Official Docs:** [https://www.tcl.tk/doc/](https://www.tcl.tk/doc/)
- 🌐 **TCL Wiki:** [https://wiki.tcl-lang.org/](https://wiki.tcl-lang.org/)
- 📄 **Detailed Guide:** [TCL_LEARNING_GUIDE.md](TCL_LEARNING_GUIDE.md)
- 📊 **Presentation:** [TCL_Learning.pptx](TCL_Learning.pptx)
- 📋 **Learning Plan:** [plan.md](plan.md)

---

## 👤 Author

**Mihir Mithani**  
[GitHub](https://github.com/Mihir-Mithani)