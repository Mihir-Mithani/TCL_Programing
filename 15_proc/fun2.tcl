#Function with args

proc sum {a b} {
    return [expr $a+$b]
}
puts "Sum of 10 and 30 is [sum 10 30]"
