#Author : Mihir Mithani
#Assignment

set mystr "My order ID is 4589 and the price is 99.50"

puts "Original String : $mystr"

set digits [regexp -all -inline {\d+} $mystr]

puts "Digits found    : $digits"
