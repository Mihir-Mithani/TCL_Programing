#a : open the file for wrinting, file must exist and sets cursor at the end of file
#r : open the file for reading, file must exist
#r+ : open the file for reading and wrinting,
##w : open the file for writing,  if the file is not exist, it creates and sets the cursor at the beginning
#w+ : open the file for reading and writing , creats the file is not existing and sets cursor at the beginning of the file
#a+ : if not exist file the creats, for reading and writing

set fp [open "input.txt" w+]
set prev_data [read $fp]
puts "Data Before : \n$prev_data"

puts $fp "Content From TCL"
seek $fp 0
set new_data [read $fp]
puts "Data After : \n$new_data"

close $fp
