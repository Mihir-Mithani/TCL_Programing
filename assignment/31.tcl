#Author : Mihir Mithani
#Assignment


array set student {
    name "Mihir"
    age 22
    major "Engineering"
    cgpa 9.3
    university "Marwadi University"
}


puts "Old Array : "
foreach key [array names student] {
    puts "student($key) : $student($key)"
}

unset student(cgpa)

puts "\nNew Array : "
foreach key [array names student] {
    puts "student($key) : $student($key)"
}

