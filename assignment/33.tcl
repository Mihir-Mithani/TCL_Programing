#Author : Mihir Mithani
#Assignment

proc leap { a } {
    if {[expr $a % 4] == 0} {
        puts "$a is a leap year"
    } else {
        puts "$a is not a leap year"
    }
}

leap 2026
