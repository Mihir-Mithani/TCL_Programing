#Author : Mihir Mithani 
#Assignment

set arr(0) "My"
set arr(1) "Name"
set arr(2) "is"
set arr(3) "Mihir"
set arr(4) "Mithani"

foreach value [lsort -integer [array names arr]] {
    puts "arr($value) : $arr($value)"
}
