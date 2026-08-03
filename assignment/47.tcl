#Author : Mihir Mithani
#Assignment

set lst {1 4 6 8 24 22 16 17 29 30 45 25}

puts "Original List : $lst"

set lst2 [lsort -integer -decreasing $lst]

puts "Decending List : $lst2"
