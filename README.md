# TCL Programming — Basics to Advanced

A structured collection of TCL (Tool Command Language) scripts organized topic-by-topic, based on the **[VLSI Academy — TCL Tutorial: Basics to Advanced](https://www.youtube.com/playlist?list=PL1h5a0eaDD3rsGDFnVki_fFEtDWQfXjca)** YouTube playlist.

> TCL is a powerful scripting language widely used in VLSI/EDA tools (Synopsys, Cadence, Mentor). This repo covers the language from the ground up.

---

## 📁 Repository Structure

```
TCL_Programing/
├── 01_introduction
│   └── baasic1.tcl
├── 02_variables_and_data_types
│   └── var1.tcl
├── 03_arithmetic_ops
│   └── expr.tcl
├── 04_conition
│   └── if.tcl
├── 04_loops
│   ├── for.tcl
│   └── while.tcl
├── 05_array
│   ├── array1.tcl
│   └── array2.tcl
├── 05_associative_array
│   ├── as_array.tcl
│   └── as_array1.tcl
├── 05_for_each
│   └── for_each1.tcl
├── README.md
├── structure.sh
└── plan.md
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
tclsh 01_introduction/baasic1.tcl
```

### Auto-generate the Folder Structure

A `structure.sh` script is included to recreate all folders (empty `.tcl` files are not created, only folders):

```bash
chmod +x structure.sh
./structure.sh
```

---

## 📚 Topics Covered

| # | Directory | Topic | Key Concepts |
|---|-----------|-------|--------------|
| 01 | `01_introduction` | Introduction | What is TCL, `tclsh`, first program (`puts`) |
| 02 | `02_variables_and_data_types` | Variables & Data Types | `set`, string/integer variables, `$` substitution |
| 03 | `03_arithmetic_ops` | Arithmetic Operations | `expr`, `+ - * /`, string-to-number conversion |
| 04 | `04_conition` | Conditionals (`if`) | `if`, `if-else`, `if-elseif-else` |
| 05 | `04_loops` | Loops | `while`, `for`, `break`, `continue` |
| 06 | `05_array` | Arrays (Indexed) | `set arr(index)`, `array names/size/get`, iteration |
| 07 | `05_associative_array` | Associative Arrays | String keys, `array names/set/get`, iteration |
| 08 | `05_for_each` | `foreach` Loop | `foreach` loop over lists |

---

## 🎓 Reference

- 📺 Playlist: [TCL Tutorial: Basics to Advanced — VLSI Academy](https://www.youtube.com/playlist?list=PL1h5a0eaDD3rsGDFnVki_fFEtDWQfXjca)
- 📖 Official Docs: [https://www.tcl.tk/doc/](https://www.tcl.tk/doc/)
- 🌐 TCL Wiki: [https://wiki.tcl-lang.org/](https://wiki.tcl-lang.org/)

---

## 👤 Author

**Mihir Mithani**  
[GitHub](https://github.com/Mihir-Mithani)