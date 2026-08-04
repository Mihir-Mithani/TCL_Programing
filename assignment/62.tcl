#Author : Mihir Mithani
#Assignment

set str "Hello, World!"

if {[regexp {[ ^a-zA-Z0-9 ]} $str]} {
	puts "String Contains Special Character"
} else {
	puts "String Does Not Contains Special Character"
}
