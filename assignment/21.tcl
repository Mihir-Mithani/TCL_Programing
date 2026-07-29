#Author : Mihir Mithani
#Assignment

# 21. Count the number of lines in a file using Tcl. 

set fp [open "data.txt" r]

set count 0
while { [gets $fp line] >= 0 } {
    incr count
}
close $fp

puts "Total Number of lines in data.txt : $count"
