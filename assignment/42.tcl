#Author : Mihir Mithani
#Assignment

set num3 10
set num4 0

puts "Attempting division: $num3 / $num4"
set status [catch {expr {$num3 / $num4}} result]

if {$status == 0} {
    puts "Success! Result: $result"
} else {
    puts "Error caught successfully: $result"
}
