set lib_file "NangateOpenCellLibrary_typical.lib"
set data "leakage_data.csv"

set fin [open $lib_file r]
set fout [open $data w]
set missing_cell [open "missing.txt" w+]

puts $fout "Cell Name,Leakage Power,height,width"

set current_cell ""
set current_leakage "N/A"
while {[gets $fin line] >= 0} {
    if {[regexp {^\s*cell\s*\(([^\)]+)\)} $line -> cell_name]} {
        if {$current_cell ne ""} {
            puts $fout "$current_cell,$current_leakage"
            set cells($current_cell) 0 
        }
        set current_cell [string trim $cell_name]
        set current_leakage "N/A"
    }

    if {[regexp {cell_leakage_power\s*:\s*([^;]+);} $line -> leakage_val]} {
        set current_leakage [string trim $leakage_val]
    }
}

if {$current_cell ne ""} {
    puts $fout "$current_cell,$current_leakage"
    set cells($current_cell) 0 
}

close $fin
close $fout

puts "Successfully parsed $lib_file and generated $data"

foreach cell [array names cells] {
    puts "$cell : $cells($cell)"
}

set lef_file [open "NangateOpenCellLibrary.macro.lef" r]

while {[gets $lef_file line] >= 0} {  
    if {[regexp {^\s*MACRO\s+([^\s]+)} $line -> cell_name]} {
        set cell_name [string trim $cell_name]
        if {[info exists cells($cell_name)] && $cells($cell_name)==0} {
            set cells($cell_name) 1
        }
    }
}

puts "\n=====Missing Cells From lef file=====\n"
foreach cell [array names cells] {
    if {$cells($cell)==0} {
        puts $missing_cell "$cell"
    }
}

close $missing_cell 

#storing height and widht in the file

set cell_dim [open "cell_dim.csv" w+]

puts $cell_dim "Cell_name,height,width"

close $lef_file
set lef_file [open "NangateOpenCellLibrary.macro.lef" r]

while {[gets $lef_file line] >=0 } {
    if {[regexp {^\s*MACRO\s+([^\s]+)} $line -> macro_name]} {
        set current_macro [string trim $macro_name]
    }
    if {[regexp {SIZE\s+([0-9\.]+)\s+BY\s+([0-9\.]+)\s*;} $line -> h w]} {
        puts $cell_dim "$current_macro,$h,$w"
        set cell_dim_arr($current_macro) {",$h,$w"}
    }
}


close $lef_file
close $cell_dim

array set dim_map {}
set dim_file [open "cell_dim.csv" r]
gets $dim_file ;# Skip the header row

while {[gets $dim_file line] >= 0} {

    set parts [split $line ","]
    set c_name [string trim [lindex $parts 0]]
    set c_height [string trim [lindex $parts 1]]
    set c_width [string trim [lindex $parts 2]]
    set dim_map($c_name) [list $c_height $c_width]
}
close $dim_file


set leak_file [open "leakage_data.csv" r]
set master_file [open "master_cell_data.csv" w]

puts $master_file "Cell_Name,Height,Width,Leakage_Power"
gets $leak_file 

while {[gets $leak_file line] >= 0} {
    set parts [split $line ","]
    set c_name [string trim [lindex $parts 0]]
    set c_leak [string trim [lindex $parts 1]]
    
    if {[info exists dim_map($c_name)]} {
        set h [lindex $dim_map($c_name) 0]
        set w [lindex $dim_map($c_name) 1]
        puts $master_file "$c_name,$h,$w,$c_leak"
    } else {
        puts $master_file "$c_name,N/A,N/A,$c_leak"
    }
}

close $leak_file
close $master_file


puts "\n=====opening files=====\n"

after 20

exec open master_cell_data.csv leakage_data.csv cell_dim.csv