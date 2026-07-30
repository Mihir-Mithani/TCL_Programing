#Author : Mihir Mithani
#Assignment

proc fact {a} {
    set fac 1
    for {set i 1} {$i<$a} {incr i 1} {
        set fac [expr $fac*$i]
    }
    return $fac
}

puts "Factorial of 10 is [fact 10]"
