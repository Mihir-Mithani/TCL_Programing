#Author : Mihir Mithani
#Assignment

#19. Open a file 'data.txt' and write three lines of text to it.

set fp [open "data.txt" w+]
puts $fp "Hello\nworld\nthis is mihir"
close $fp

set fp [open "data.txt" r]
set file_data [read $fp]
close $fp

puts "--- File Contents ---"
puts -nonewline $file_data
