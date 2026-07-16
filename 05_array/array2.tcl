#Iterating over Array


set institute(0) VLSI
set institute(1) Intern
set institute(2) Mihir

for { set i 0 } { $i<=2 } { incr i } {
    puts "institute($i) : $institute($i)";
}
