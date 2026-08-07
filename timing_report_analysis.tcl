

set data [open "timing_report.txt" r]

set output_data [open "timing_report.csv" w+]

set count 0

while {[gets $data line] >= 0} {
	if {[regexp {^#} $line] } {
		continue
	}
	if {[regexp {^\S*Other*} $line] } {
		puts "Ending at other path time"
		break
	}
	incr count

    if {[regexp {^\s*Startpoint:\s*(.+)} $line -> val]} {
        puts $output_data "Startpoint : [string trim $val]"
    }

    if {[regexp {^\s*Endpoint:\s*(.+)} $line -> val]} {
        puts $output_data "Endpoint : [string trim $val]"
    }

    if {[regexp {^\s*Setup:\s*} $line] && $count==0} {
        puts $output_data "Path type : [string trim "Setup"] "
    }

    if {[regexp {^\s*Slack:\s*(.+)} $line -> val]} {
        puts $output_data "Slack : [string trim $val]"
        puts $output_data "Instance_name,trans,fanout,delay"
    }

    if {[regexp {^\s*Clock:\s*(.+)} $line -> val]} {
        puts $output_data "Clock : [string trim $val]"
    }

    if {[regexp {^\s*View:\s*(.+)} $line -> val]} {
        puts $output_data "View : [string trim $val]"
    }
    
    set str $line
	set values [regexp -all -inline {\S+} $str]
	set keep_line ""
		
	append keep_line [lindex $values 10]
	append keep_line ","

	append keep_line [lindex $values 6]
	append keep_line ","
		
	append keep_line [lindex $values 7]
	append keep_line ","
	puts $keep_line
	append keep_line [lindex $values 8]
	if {$keep_line==",,,"} {
		continue
	}

	puts $output_data $keep_line
}

puts "$count"

close $data
close $output_data

after 20
exec open "timing_report.csv"