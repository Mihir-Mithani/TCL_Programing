#Array


set institute(0) VLSI
set institute(1) Intern
set institute(2) Mihir

foreach index [array names institute] {
    puts "institute($index) : $institute($index)"
}
