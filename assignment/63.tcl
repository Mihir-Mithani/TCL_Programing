#Author : Mihir Mithani
#Assignment


set text "You can reach us at +91-9876543210 or our support desk at +91-9123456789. Invalid numbers include +91-12345 and 9876543210."

set phone_number [regexp -all -inline  {\+91-\d{10}} $text]

puts "Phone numbers in : \"$text\" are \n\n$phone_number"