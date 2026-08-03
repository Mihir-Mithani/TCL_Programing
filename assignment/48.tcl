#Author : Mihir Mithani
#Assignment

puts "Generating 10 random number"
for {set i 0} {$i<10} {incr i} {
    puts [expr [expr {rand()}]*100]
}
