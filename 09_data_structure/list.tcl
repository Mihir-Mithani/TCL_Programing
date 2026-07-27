# using normal
set lst {1 2 3}

# using split command
set lst2 [split "a.b.c" "."]

# using list command
set lst3 [list "hello" "world" "!!!!!"]

puts "lst : "
foreach item $lst {
    puts "item : $item"
}

puts "lst2 : "
foreach item $lst2 {
    puts "item : $item"
}

puts "lst3 : "
foreach item $lst3 {
    puts "item : $item"
}
