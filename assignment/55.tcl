#Author : Mihir Mithani
#Assignment

set num(a) 10
set num(b) 20
set num(c) 15

set max 0
set maxkey -1
foreach key [array names num] {
    if {$num($key)>$max} {
        set max $num($key)
        set maxkey $key
    }
}

puts "Maximum value found at $maxkey with value $max"
