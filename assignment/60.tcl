#Author : Mihir Mithani
#Assignment


set str "My name is Mihir Mithani"

set first [string index $str 0]

if {[string is upper $first]} {
    puts "String Starts With UpperCase"
} else {
    puts "String Does Not Start With UpperCase"
}