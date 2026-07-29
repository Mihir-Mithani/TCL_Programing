#Author : Mihir Mithani
#Assignment
# 12. Replace the second element of a list with a new value.

set myList {apple banana cherry date elderberry}

puts "Original list: $myList"

# Replace 2nd element (index 1) with "blueberry"
set myList [lreplace \$myList 1 1 blueberry]

puts "Updated list:  \$myList"