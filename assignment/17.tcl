#Author : Mihir Mithani
#Assignment

#17. Write a procedure to calculate the square of a number.

proc square { a } {
    return [expr $a*$a]
}

puts "Square of 10 is [square 10]"
