#Author : Mihir Mithani
#Assignment
# 10. Create a list of 5 elements and print the entire list.

set myList {apple banana cherry date elderberry}

puts "The list is: $myList"
puts "List elements:"
foreach item $myList {
    puts "  $item"
}