#Author : Mihir Mithani
#Assignment

proc fib {n} {
    if {$n <= 0} {
        return 0
    } elseif {$n == 1} {
        return 1
    } else {
        return [expr {[fib [expr {$n - 1}]] + [fib [expr {$n - 2}]]}]
    }
}

set n 10
set series {}

for {set i 0} {$i < $n} {incr i} {
    lappend series [fib $i]
}

puts "Fibonacci series ($n terms): $series"
