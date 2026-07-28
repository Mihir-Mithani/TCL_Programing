# TCL Learning Guide

A comprehensive TCL (Tool Command Language) learning repository organized by topics with practical examples.

## 📁 Repository Structure

```
tcl/
├── 01_introduction/           # Basic "Hello World" introduction
├── 02_variables_and_data_types/  # Variables and data types
├── 03_arithmetic_ops/         # Arithmetic operations with expr
├── 04_condition/              # Conditional statements (if/else)
├── 04_loops/                  # Loop constructs (for, while)
├── 05_array/                  # Indexed arrays
├── 05_associative_array/      # Associative arrays (dictionaries)
├── 05_for_each/               # Foreach loops over arrays
├── 06_element_search/         # Searching elements in arrays
├── 06_element_search/         # Search in associative arrays
├── 07_exec/                   # Executing shell commands
├── 09_data_structure/         # Lists and data structures
├── string/                    # String manipulation operations
└── structure.sh               # Directory structure creation script
```

## 📚 Topics Covered

### 1. Introduction (`01_introduction/`)
- **baasic1.tcl** - Basic "Hello World" program

### 2. Variables & Data Types (`02_variables_and_data_types/`)
- **var1.tcl** - Basic variable assignment and usage
  - String variables: `set str "This is Mihir Mithani"`
  - Integer variables: `set age 21`
  - Variable substitution with `$`

### 3. Arithmetic Operations (`03_arithmetic_ops/`)
- **expr.tcl** - Arithmetic operations using `expr`
  - Addition: `expr "$a + $b"`
  - Subtraction: `expr "$a - $b"`
  - Multiplication: `expr "$a * $b"`
  - Division: `expr "$a / $b"`

### 4. Conditional Statements (`04_condition/`)
- **if.tcl** - If/else conditional statements
  ```tcl
  if {$x == 2} {put "x is 2"} else {puts "x is not 2"}
  ```

### 5. Loops (`04_loops/`)
- **while.tcl** - While loop
  ```tcl
  while {$x < 6} {
      puts "x is $x"
      set x [expr $x + 1]
  }
  ```
- **for.tcl** - For loop with initialization, condition, and increment
  ```tcl
  for {puts "Start"; set i 0} {$i<2} {incr i; puts "I after incr: $i"} {
      puts "I inside first loop: $i"
  }
  ```

### 6. Arrays (`05_array/`, `05_associative_array/`, `05_for_each/`)
- **array1.tcl** - Indexed arrays
  ```tcl
  set institute(0) VLSI
  set institute(1) Intern
  set institute(2) Mihir
  ```
- **array2.tcl** - Iterating over indexed arrays with for loop
- **as_array.tcl** - Associative arrays (key-value pairs)
  ```tcl
  set Employee1(Name) "Mihir"
  set Employee1(Age) 21
  ```
- **as_array1.tcl** - Getting array indices with `array names`
- **for_each1.tcl** - Iterating arrays with `foreach` and `array names`

### 6. Element Search (`06_element_search/`)
- **search.tcl** - Search element in indexed array
- **search_associative.tcl** - Search key in associative array

### 7. Exec & Shell Commands (`07_exec/`)
- **exec1.tcl** - Execute shell commands with `exec`
  ```tcl
  exec sleep 1s
  exec touch text1.txt text2.txt
  set files [exec ls]
  ```
- **escape.tcl** - Escape sequences in TCL
  ```tcl
  puts "No slash\n"      ;# Won't print \n
  puts "- slash n\\n"    ;# Will print \n
  ```

### 8. Lists (`09_data_structure/`)
- **list.tcl** - List creation methods
  - Direct: `set lst {1 2 3}`
  - Split: `set lst2 [split "a.b.c" "."]`
  - List command: `set lst3 [list "hello" "world" "!!!!!"]`

### 9. String Operations (`string/`)
- **string1.tcl** - String comparison: `string compare "Golden" "Light"` → -1
- **string_index.tcl** - Get character at index: `string index "Timing Path" 4` → "n"
- **string_length.tcl** - String length: `string length "Timing Path"` → 11
- **string_range.tcl** - Substring: `string range "I am studying Physical Design" 2 12` → "m studying Ph"
- **string_trim.tcl** - Trim characters: `string trimright "VLSI DESIGN ENGINEERING" "DESIGN"` → "VLSI ENGINEERING"
- **string_tolower.tcl** - Lowercase: `string tolower "VLSI DESIGN"` → "vlsi design"

### 10. File Structure Script
- **structure.sh** - Bash script to create the tutorial directory structure

## 🚀 Getting Started

### Prerequisites
- TCL interpreter (tclsh) installed
  - macOS: `brew install tcl-tk`
  - Ubuntu: `sudo apt-get install tcl`
  - Windows: ActiveTcl or Chocolatey

### Running Examples
```bash
# Run any TCL file
tclsh 01_introduction/baasic1.tcl

# Run arithmetic example
tclsh 03_arithmetic_ops/expr.tcl

# Run string operations
tclsh string/string_length.tcl
```

## 📖 Key TCL Concepts Covered

| Concept | Command/Keyword | Example |
|---------|----------------|---------|
| Variable assignment | `set` | `set x 10` |
| Variable substitution | `$` | `puts $x` |
| Arithmetic | `expr` | `expr {$a + $b}` |
| String comparison | `string compare` | `string compare $a $b` |
| String length | `string length` | `string length $str` |
| Substring | `string range` | `string range $str 0 5` |
| Lowercase | `string tolower` | `string tolower $str` |
| Trim right | `string trimright` | `string trimright $str $chars` |
| Indexed array | `arr(index)` | `set arr(0) "val"` |
| Associative array | `arr(key)` | `set arr(name) "val"` |
| Array indices | `array names` | `array names arr` |
| Foreach loop | `foreach` | `foreach i [array names arr] {...}` |
| For loop | `for` | `for {set i 0} {$i<10} {incr i} {...}` |
| While loop | `while` | `while {$i<10} {...}` |
| If/else | `if/else` | `if {$x>0} {...} else {...}` |
| Shell command | `exec` | `exec ls` |
| Escape sequences | `\n`, `\\n` | `puts "line\n"` vs `puts "line\\n"` |
| List creation | `list`, `split`, `{}` | `list a b c` |
| List iteration | `foreach` | `foreach item $list {...}` |

## 🎯 Learning Path

1. **Start Here**: `01_introduction/baasic1.tcl`
2. **Variables**: `02_variables_and_data_types/var1.tcl`
3. **Arithmetic**: `03_arithmetic_ops/expr.tcl`
4. **Control Flow**: `04_condition/if.tcl` → `04_loops/while.tcl` → `04_loops/for.tcl`
5. **Data Structures**: 
   - Arrays: `05_array/array1.tcl` → `05_array/array2.tcl`
   - Associative Arrays: `05_associative_array/as_array.tcl` → `as_array1.tcl`
   - Foreach: `05_for_each/for_each1.tcl`
   - Lists: `09_data_structure/list.tcl`
6. **Search**: `06_element_search/search.tcl` → `search_associative.tcl`
7. **String Ops**: `string/*.tcl` (all files)
8. **Shell Commands**: `07_exec/exec1.tcl` → `escape.tcl`

## 📝 Notes

- All examples use `tclsh` (TCL shell) interpreter
- Variables don't need declaration; `set` creates and assigns
- Variables are strings by default; `expr` treats them as numbers when needed
- Arrays in TCL are associative arrays (hash maps) - indexed arrays use integer keys
- `array names` returns all keys in an array
- `foreach` with `array names` is the idiomatic way to iterate arrays
- `exec` executes shell commands and captures output
- Escape sequences: `\n` = newline in double quotes, `\\n` = literal `\n`

## 📅 Learning Progress Tracking

See [Learning Plan](Learning%20PPT.md) for the structured learning plan with timeline (Jul 15 - Aug 15, 2025).

---

*Happy TCL Learning!* 🎉