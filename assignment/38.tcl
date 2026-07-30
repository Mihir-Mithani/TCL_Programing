#Author : Mihir Mithani
#Assignment

set str "My name is mihir mithani"

set rev ""

set len [string length $str]

for { set i [expr $len-1] } { $i>=0 } { incr i -1 } {
    append rev [string index $str $i]
}

puts "Original String : $str\nReversed String : $rev"
