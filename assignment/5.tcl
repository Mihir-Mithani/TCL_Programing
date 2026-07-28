#Author : Mihir Mithani
#Assignment

puts -nonewline "Enter first number : "
flush stdout
gets stdin num1

puts -nonewline "Enter second number : "
flush stdout
gets stdin num2

set add [expr {$num1 + $num2}]
set sub [expr {$num1 - $num2}]
set mul [expr {$num1 * $num2}]
set div [expr {$num1 / $num2}]

puts "Addition of $num1 and $num2 is $add"
puts "Substraction of $num1 and $num2 is $sub"
puts "Multiplition of $num1 and $num2 is $mul"
puts "Division of $num1 and $num2 is $div"
