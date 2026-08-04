#Author : Mihir Mithani
#Assignment

set str "1234567890"

if {[string is digit $str] && [string length $str]>0} {
	puts "String Only Contains Digits"
} else {
	puts "String Does Not Only Contains Digits"
}