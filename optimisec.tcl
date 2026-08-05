#!/usr/bin/env tclsh
# Configuration
set lib_file    "NangateOpenCellLibrary_typical.lib"
set lef_file    "NangateOpenCellLibrary.macro.lef"
set leakage_csv "leakage_data.csv"
set dim_csv     "cell_dim.csv"
set master_csv  "master_cell_data.csv"
set missing_txt "missing.txt"

# ---------- 1. Parse the liberty file for leakage power (single pass) ----------
array set leakage_map {}
set current_cell ""

set fin [open $lib_file r]
while {[gets $fin line] >= 0} {
    if {[regexp {^\s*cell\s*\(([^\)]+)\)} $line -> cell_name]} {
        set current_cell [string trim $cell_name]
        set leakage_map($current_cell) "N/A"
    } elseif {$current_cell ne "" \
              && [regexp {cell_leakage_power\s*:\s*([^;]+);} $line -> leakage_val]} {
        set leakage_map($current_cell) [string trim $leakage_val]
    }
}
close $fin

# ---------- 2. Parse the LEF file for cell dimensions (single pass) ----------
array set dim_map {}
set current_macro ""

set fin [open $lef_file r]
while {[gets $fin line] >= 0} {
    if {[regexp {^\s*MACRO\s+(\S+)} $line -> macro_name]} {
        set current_macro [string trim $macro_name]
    } elseif {$current_macro ne "" \
              && [regexp {SIZE\s+([0-9.]+)\s+BY\s+([0-9.]+)\s*;} $line -> h w]} {
        set dim_map($current_macro) [list $h $w]
    }
}
close $fin

# ---------- 3. Write leakage_data.csv ----------
set fout [open $leakage_csv w]
puts $fout "Cell Name,Leakage Power"
foreach cell [lsort [array names leakage_map]] {
    puts $fout "$cell,$leakage_map($cell)"
}
close $fout

# ---------- 4. Write cell_dim.csv ----------
set fout [open $dim_csv w]
puts $fout "Cell_name,height,width"
foreach cell [lsort [array names dim_map]] {
    lassign $dim_map($cell) h w
    puts $fout "$cell,$h,$w"
}
close $fout

# ---------- 5. Cells present in the .lib but missing dimensions in the .lef ----------
set fout [open $missing_txt w]
foreach cell [lsort [array names leakage_map]] {
    if {![info exists dim_map($cell)]} {
        puts $fout $cell
    }
}
close $fout

# ---------- 6. Combined master file (leakage + dimensions) ----------
set fout [open $master_csv w]
puts $fout "Cell_Name,Height,Width,Leakage_Power"
foreach cell [lsort [array names leakage_map]] {
    if {[info exists dim_map($cell)]} {
        lassign $dim_map($cell) h w
    } else {
        set h "N/A"
        set w "N/A"
    }
    puts $fout "$cell,$h,$w,$leakage_map($cell)"
}
close $fout

puts "Done. Generated:"
puts "  $leakage_csv"
puts "  $dim_csv"
puts "  $missing_txt"
puts "  $master_csv"