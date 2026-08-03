#Author : Mihir Mithani
#Assignment

proc selection_sort {lst} {
    set len [llength $lst]
    
    for {set i 0} {$i < [expr {$len - 1}]} {incr i} {
        set min_idx $i
        
        for {set j [expr {$i + 1}]} {$j < $len} {incr j} {
            if {[lindex $lst $j] < [lindex $lst $min_idx]} {
                set min_idx $j
            }
        }
        
        if {$min_idx != $i} {
            set temp [lindex $lst $i]
            lset lst $i [lindex $lst $min_idx]
            lset lst $min_idx $temp
        }
    }
    
    return $lst
}

set input_list {64 25 12 22 11 90 33}

puts "Original List : $input_list"
puts "Sorted List   : [selection_sort $input_list]"
