#Author : Mihir Mithani
#Assignment
# 7. Use an 'if-elseif-else' structure to determine whether a number is even or odd.

set num 0

puts "Enter a number: "
flush stdout
gets stdin num

if {$num % 2 == 0} {
    puts "$num is Even"
} else {
    puts "$num is Odd"
}