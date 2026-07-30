#Author : Mihir Mithani
#Assignment

proc cal {a b choice} {
    switch $choice {
        "+" {
            return [expr $a+$b]
        }
        "-" {
            return [expr $a-$b]
        }
        "*" {
            return [expr $a*$b]
        }
        "/" {
            return [expr $a/$b]
        }
    }
}

puts "Multiplication of 10 and 20 is : [cal 10 20 "*"] "
