#Author : Mihir Mithani
#Assignment

proc evens {lst} {
    set lst2 {}
    foreach value $lst {
        if { [expr {$value%2}]==0 } {
            lappend lst2 $value
        }
    }
    return $lst2
}

set lst {1 4 6 8 24 22 16 17 29 30 45 25}



puts "Original List : $lst\nEven Number : [evens $lst]"
