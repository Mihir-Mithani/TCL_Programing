#Author : Mihir Mithani
#Assignment

# Define a global variable
set counter 10

proc increment_counter {} {
    global counter
    set counter [expr {$counter + 5}]
    puts "Inside procedure, counter = $counter"
}

puts "Before procedure call, counter = $counter"
increment_counter
puts "After procedure call, counter = $counter"
