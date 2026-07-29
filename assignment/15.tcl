#Author : Mihir Mithani
#Assignment
# 15. Remove an element from a list and display the list.

set myList {apple banana cherry date elderberry}

puts "Original list: $myList"

# Remove element at index 2 (cherry)
set myList [lreplace $myList 2 2]

puts "After removing index 2: $myList"
