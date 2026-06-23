# TCL Programming — Basics to Advanced

A structured collection of TCL (Tool Command Language) scripts organized topic-by-topic, based on the **[VLSI Academy — TCL Tutorial: Basics to Advanced](https://www.youtube.com/playlist?list=PL1h5a0eaDD3rsGDFnVki_fFEtDWQfXjca)** YouTube playlist.

> TCL is a powerful scripting language widely used in VLSI/EDA tools (Synopsys, Cadence, Mentor). This repo covers the language from the ground up.

---

## 📁 Repository Structure

```
TCL_Programing/
│
├── basics/
│   └── basic1.tcl
│
├── variable/
│   └── var1.tcl
│
├── 01_introduction/
│   ├── 01_what_is_tcl.tcl
│   ├── 02_installation_and_setup.tcl
│   ├── 03_first_tcl_program.tcl
│   └── 04_tclsh_basics.tcl
│
├── 02_variables_and_data_types/
│   ├── 01_set_command.tcl
│   ├── 02_variable_substitution.tcl
│   ├── 03_command_substitution.tcl
│   ├── 04_double_quotes_vs_curly_braces.tcl
│   ├── 05_backslash_substitution.tcl
│   └── 06_unset_and_info_exists.tcl
│
├── 03_string_operations/
│   ├── 01_string_length.tcl
│   ├── 02_string_index_and_range.tcl
│   ├── 03_string_compare.tcl
│   ├── 04_string_match.tcl
│   ├── 05_string_toupper_tolower.tcl
│   ├── 06_string_trim.tcl
│   ├── 07_string_replace.tcl
│   └── 08_append_command.tcl
│
├── 04_arithmetic_and_expressions/
│   ├── 01_expr_command.tcl
│   ├── 02_math_operators.tcl
│   ├── 03_comparison_operators.tcl
│   ├── 04_logical_operators.tcl
│   └── 05_incr_command.tcl
│
├── 05_control_flow/
│   ├── 01_if_statement.tcl
│   ├── 02_if_else.tcl
│   ├── 03_if_elseif_else.tcl
│   └── 04_switch_statement.tcl
│
├── 06_loops/
│   ├── 01_while_loop.tcl
│   ├── 02_for_loop.tcl
│   ├── 03_foreach_loop.tcl
│   ├── 04_break_and_continue.tcl
│   └── 05_nested_loops.tcl
│
├── 07_procedures/
│   ├── 01_proc_basics.tcl
│   ├── 02_proc_with_arguments.tcl
│   ├── 03_return_values.tcl
│   ├── 04_default_arguments.tcl
│   ├── 05_variable_scope_local_global.tcl
│   ├── 06_upvar_command.tcl
│   └── 07_recursive_procedures.tcl
│
├── 08_lists/
│   ├── 01_creating_lists.tcl
│   ├── 02_lindex_and_llength.tcl
│   ├── 03_lappend_and_linsert.tcl
│   ├── 04_lreplace_and_lremove.tcl
│   ├── 05_lsort_and_lreverse.tcl
│   ├── 06_lsearch.tcl
│   ├── 07_foreach_with_lists.tcl
│   ├── 08_nested_lists.tcl
│   └── 09_split_and_join.tcl
│
├── 09_arrays/
│   ├── 01_creating_arrays.tcl
│   ├── 02_accessing_array_elements.tcl
│   ├── 03_array_names_and_size.tcl
│   ├── 04_iterating_arrays_foreach.tcl
│   ├── 05_associative_arrays.tcl
│   ├── 06_array_get_set.tcl
│   └── 07_unset_array_element.tcl
│
├── 10_dictionaries/
│   ├── 01_dict_create.tcl
│   ├── 02_dict_get_set.tcl
│   ├── 03_dict_keys_and_values.tcl
│   ├── 04_dict_for_loop.tcl
│   ├── 05_nested_dictionaries.tcl
│   └── 06_dict_exists_and_remove.tcl
│
├── 11_file_handling/
│   ├── 01_open_and_close_file.tcl
│   ├── 02_read_file.tcl
│   ├── 03_write_file.tcl
│   ├── 04_append_to_file.tcl
│   ├── 05_read_file_line_by_line.tcl
│   ├── 06_file_exists_and_info.tcl
│   ├── 07_file_copy_rename_delete.tcl
│   └── 08_directory_operations.tcl
│
├── 12_regular_expressions/
│   ├── 01_regexp_basics.tcl
│   ├── 02_regexp_matching.tcl
│   ├── 03_regsub_replace.tcl
│   ├── 04_wildcards_and_metacharacters.tcl
│   ├── 05_groups_and_captures.tcl
│   └── 06_regexp_vlsi_use_cases.tcl
│
├── 13_error_handling/
│   ├── 01_catch_command.tcl
│   ├── 02_error_command.tcl
│   ├── 03_try_and_throw.tcl
│   └── 04_errorInfo_and_errorCode.tcl
│
├── 14_packages_and_namespaces/
│   ├── 01_source_command.tcl
│   ├── 02_package_provide.tcl
│   ├── 03_package_require.tcl
│   ├── 04_namespace_basics.tcl
│   └── 05_namespace_proc_and_variables.tcl
│
├── 15_advanced_topics/
│   ├── 01_exec_command.tcl
│   ├── 02_glob_command.tcl
│   ├── 03_info_commands.tcl
│   ├── 04_format_and_scan.tcl
│   ├── 05_tcl_in_vlsi_eda_tools.tcl
│   └── 06_automation_script_example.tcl
│
├── structure.sh          ← shell script to auto-generate the folder/file structure
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
