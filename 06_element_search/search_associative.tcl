#associative array 
#students(name) -age


set student(jacob) 24
set student(ryan) 27
set student(callie) 27
set student(john) 29
set student(yang) 21

set element callie

foreach name [array names student] {
    if { $name == $element } {
        puts "Name : $name"
        puts "Age : $student($name)"
    }
}
