#!/bin/bash

# Get the directory where this script is located
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE="$DIR/tcl_tutorial"

echo "Creating TCL tutorial structure in: $BASE"

# Create all folders
mkdir -p "$BASE/01_introduction"
mkdir -p "$BASE/02_variables_and_data_types"
mkdir -p "$BASE/03_string_operations"
mkdir -p "$BASE/04_arithmetic_and_expressions"
mkdir -p "$BASE/05_control_flow"
mkdir -p "$BASE/06_loops"
mkdir -p "$BASE/07_procedures"
mkdir -p "$BASE/08_lists"
mkdir -p "$BASE/09_arrays"
mkdir -p "$BASE/10_dictionaries"
mkdir -p "$BASE/11_file_handling"
mkdir -p "$BASE/12_regular_expressions"
mkdir -p "$BASE/13_error_handling"
mkdir -p "$BASE/14_packages_and_namespaces"
mkdir -p "$BASE/15_advanced_topics"

# 01 - Introduction
touch "$BASE/01_introduction/01_what_is_tcl.tcl"
touch "$BASE/01_introduction/02_installation_and_setup.tcl"
touch "$BASE/01_introduction/03_first_tcl_program.tcl"
touch "$BASE/01_introduction/04_tclsh_basics.tcl"

# 02 - Variables and Data Types
touch "$BASE/02_variables_and_data_types/01_set_command.tcl"
touch "$BASE/02_variables_and_data_types/02_variable_substitution.tcl"
touch "$BASE/02_variables_and_data_types/03_command_substitution.tcl"
touch "$BASE/02_variables_and_data_types/04_double_quotes_vs_curly_braces.tcl"
touch "$BASE/02_variables_and_data_types/05_backslash_substitution.tcl"
touch "$BASE/02_variables_and_data_types/06_unset_and_info_exists.tcl"

# 03 - String Operations
touch "$BASE/03_string_operations/01_string_length.tcl"
touch "$BASE/03_string_operations/02_string_index_and_range.tcl"
touch "$BASE/03_string_operations/03_string_compare.tcl"
touch "$BASE/03_string_operations/04_string_match.tcl"
touch "$BASE/03_string_operations/05_string_toupper_tolower.tcl"
touch "$BASE/03_string_operations/06_string_trim.tcl"
touch "$BASE/03_string_operations/07_string_replace.tcl"
touch "$BASE/03_string_operations/08_append_command.tcl"

# 04 - Arithmetic and Expressions
touch "$BASE/04_arithmetic_and_expressions/01_expr_command.tcl"
touch "$BASE/04_arithmetic_and_expressions/02_math_operators.tcl"
touch "$BASE/04_arithmetic_and_expressions/03_comparison_operators.tcl"
touch "$BASE/04_arithmetic_and_expressions/04_logical_operators.tcl"
touch "$BASE/04_arithmetic_and_expressions/05_incr_command.tcl"

# 05 - Control Flow
touch "$BASE/05_control_flow/01_if_statement.tcl"
touch "$BASE/05_control_flow/02_if_else.tcl"
touch "$BASE/05_control_flow/03_if_elseif_else.tcl"
touch "$BASE/05_control_flow/04_switch_statement.tcl"

# 06 - Loops
touch "$BASE/06_loops/01_while_loop.tcl"
touch "$BASE/06_loops/02_for_loop.tcl"
touch "$BASE/06_loops/03_foreach_loop.tcl"
touch "$BASE/06_loops/04_break_and_continue.tcl"
touch "$BASE/06_loops/05_nested_loops.tcl"

# 07 - Procedures
touch "$BASE/07_procedures/01_proc_basics.tcl"
touch "$BASE/07_procedures/02_proc_with_arguments.tcl"
touch "$BASE/07_procedures/03_return_values.tcl"
touch "$BASE/07_procedures/04_default_arguments.tcl"
touch "$BASE/07_procedures/05_variable_scope_local_global.tcl"
touch "$BASE/07_procedures/06_upvar_command.tcl"
touch "$BASE/07_procedures/07_recursive_procedures.tcl"

# 08 - Lists
touch "$BASE/08_lists/01_creating_lists.tcl"
touch "$BASE/08_lists/02_lindex_and_llength.tcl"
touch "$BASE/08_lists/03_lappend_and_linsert.tcl"
touch "$BASE/08_lists/04_lreplace_and_lremove.tcl"
touch "$BASE/08_lists/05_lsort_and_lreverse.tcl"
touch "$BASE/08_lists/06_lsearch.tcl"
touch "$BASE/08_lists/07_foreach_with_lists.tcl"
touch "$BASE/08_lists/08_nested_lists.tcl"
touch "$BASE/08_lists/09_split_and_join.tcl"

# 09 - Arrays
touch "$BASE/09_arrays/01_creating_arrays.tcl"
touch "$BASE/09_arrays/02_accessing_array_elements.tcl"
touch "$BASE/09_arrays/03_array_names_and_size.tcl"
touch "$BASE/09_arrays/04_iterating_arrays_foreach.tcl"
touch "$BASE/09_arrays/05_associative_arrays.tcl"
touch "$BASE/09_arrays/06_array_get_set.tcl"
touch "$BASE/09_arrays/07_unset_array_element.tcl"

# 10 - Dictionaries
touch "$BASE/10_dictionaries/01_dict_create.tcl"
touch "$BASE/10_dictionaries/02_dict_get_set.tcl"
touch "$BASE/10_dictionaries/03_dict_keys_and_values.tcl"
touch "$BASE/10_dictionaries/04_dict_for_loop.tcl"
touch "$BASE/10_dictionaries/05_nested_dictionaries.tcl"
touch "$BASE/10_dictionaries/06_dict_exists_and_remove.tcl"

# 11 - File Handling
touch "$BASE/11_file_handling/01_open_and_close_file.tcl"
touch "$BASE/11_file_handling/02_read_file.tcl"
touch "$BASE/11_file_handling/03_write_file.tcl"
touch "$BASE/11_file_handling/04_append_to_file.tcl"
touch "$BASE/11_file_handling/05_read_file_line_by_line.tcl"
touch "$BASE/11_file_handling/06_file_exists_and_info.tcl"
touch "$BASE/11_file_handling/07_file_copy_rename_delete.tcl"
touch "$BASE/11_file_handling/08_directory_operations.tcl"

# 12 - Regular Expressions
touch "$BASE/12_regular_expressions/01_regexp_basics.tcl"
touch "$BASE/12_regular_expressions/02_regexp_matching.tcl"
touch "$BASE/12_regular_expressions/03_regsub_replace.tcl"
touch "$BASE/12_regular_expressions/04_wildcards_and_metacharacters.tcl"
touch "$BASE/12_regular_expressions/05_groups_and_captures.tcl"
touch "$BASE/12_regular_expressions/06_regexp_vlsi_use_cases.tcl"

# 13 - Error Handling
touch "$BASE/13_error_handling/01_catch_command.tcl"
touch "$BASE/13_error_handling/02_error_command.tcl"
touch "$BASE/13_error_handling/03_try_and_throw.tcl"
touch "$BASE/13_error_handling/04_errorInfo_and_errorCode.tcl"

# 14 - Packages and Namespaces
touch "$BASE/14_packages_and_namespaces/01_source_command.tcl"
touch "$BASE/14_packages_and_namespaces/02_package_provide.tcl"
touch "$BASE/14_packages_and_namespaces/03_package_require.tcl"
touch "$BASE/14_packages_and_namespaces/04_namespace_basics.tcl"
touch "$BASE/14_packages_and_namespaces/05_namespace_proc_and_variables.tcl"

# 15 - Advanced Topics
touch "$BASE/15_advanced_topics/01_exec_command.tcl"
touch "$BASE/15_advanced_topics/02_glob_command.tcl"
touch "$BASE/15_advanced_topics/03_info_commands.tcl"
touch "$BASE/15_advanced_topics/04_format_and_scan.tcl"
touch "$BASE/15_advanced_topics/05_tcl_in_vlsi_eda_tools.tcl"
touch "$BASE/15_advanced_topics/06_automation_script_example.tcl"

echo "Done! 15 folders and 76 files created successfully."
