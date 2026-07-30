#Author : Mihir Mithani
#Assignment

set mystr "My name is mihir mithani"

puts "Current String : $mystr"

set lst [split $mystr " "]

set len [llength $lst]

set i 0

while {$i<$len} {
    puts "Index $i : [lindex $lst $i]"
    incr i
}
