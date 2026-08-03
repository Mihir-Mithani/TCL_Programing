#Author : Mihir Mithani
#Assignment

set lst {name age sub1 sub2 sub3}
array set student {}

foreach field $lst {
    puts -nonewline "Enter $field : "
    flush stdout
    gets stdin student($field)
}

set total 0
for {set i 1} {$i < 4} {incr i} {
    set total [expr {$total + $student(sub$i)}]
}
puts "Total : $total"

set average [expr {$total / 3.0}]
puts "Average : $average"

puts "\n==========Student Details==========\n"

foreach value [array names student] {
    puts "$value : $student($value)"
}
