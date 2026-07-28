#Author : Mihir Mithani
#Assignment
# 6. Write a script to check if a number is positive, negative, or zero.

set num 0

puts "Enter a number: "
flush stdout
gets stdin num

if {$num > 0} {
    puts "$num is Positive"
} elseif {$num < 0} {
    puts "$num is Negative"
} else {
    puts "$num is Zero"
}