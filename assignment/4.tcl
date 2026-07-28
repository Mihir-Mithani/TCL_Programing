#Author : Mihir Mithani
#Assignment

puts -nonewline "Enter first number : "
flush stdout
gets stdin num1

puts -nonewline "Enter second number : "
flush stdout
gets stdin num2

set sum [expr {$num1 + $num2}]

puts "Addition of $num1 and $num2 is $sum"
