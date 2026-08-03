#Author : Mihir Mithani
#Assignment

set lst {1 2 3 4 4 5 6 6 7 8 9 9 10}

foreach value $lst {
    incr freq($value)
}

puts "=====Frequency Map : =====\n" 
foreach value [lsort -integer [array names freq]] {
    puts "$value : $freq($value)"
}
puts "\n=====Duplicate Elements : =====\n"

foreach value [array names freq] {
    if {$freq($value)>1} {
        puts "$value"
    }
}
