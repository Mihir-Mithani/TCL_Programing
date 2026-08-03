#Author : Mihir Mithani
#Assignment

proc count {lst} {
    return [llength $lst]
}

set lst {my name is mihir}

puts "List : $lst \ncount : [count $lst]"
