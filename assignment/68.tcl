#Author : Mihir Mithani
#Assignment


set lst {1 2 3 4 5 6 7 8 9 0}
set lst2 {1 3 5 7 9}

puts "Elements that are in \"$lst\" and not in \"$lst2\" are : \n"

foreach value $lst {
	set flag 0
	foreach val $lst2 {
		if {$value==$val} {
			set flag 1
			break
		}
	}
	if {$flag==0} {
		puts $value
	}
}