#Author : Mihir Mithani
#Assignment


set file [open "git_log.txt" r]

set line_num 1

while {[gets $file line] != -1} {
	set word_count [llength $line]
    puts "Line $line_num: $word_count words"
    incr line_num
}