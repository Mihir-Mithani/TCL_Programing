#Author : Mihir Mithani
#Assignment

#18. Write a script to create and call a procedure that returns the maximum of two numbers.
 
proc max {a b} {
    if {$a>$b} {
        return $a
    } else {
        return $b
    }
}

puts "Maximum of 10 and 20 is [max 10 20]"
