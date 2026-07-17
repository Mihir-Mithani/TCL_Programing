#program to find a given element in arrat in tcl


set array1(0) a
set array1(1) b
set array1(2) c
set array1(3) d
set array1(4) e
set array1(5) f

set element d

foreach number [array names array1] {
    if {$array1($number) == $element} {
        puts "Found : $array1($number) at index $number"
    }
}

