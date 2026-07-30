#Author : Mihir Mithani
#Assignment


array set student {
    name "Mihir"
    age 22
    major "Engineering"
    cgpa 9.3
    university "Marwadi University"
}


puts "Keys in the array : "
foreach key [array names student] {
    puts $key
}
