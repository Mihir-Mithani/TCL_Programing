#!/bin/bash

# Get the directory where this script is located
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE="$DIR"

echo "Creating TCL tutorial structure in: $BASE"

# Create all folders
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

