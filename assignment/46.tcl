#Author : Mihir Mithani
#Assignment

set lst { {a b b} {d e f} {g h i} }

set index 0

puts "Original  List : $lst"

foreach sub $lst {
    puts "Sublist $index : $sub"
    incr index
}

