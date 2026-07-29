#a : open the file for wrinting, file must exist and sets cursor at the end of file
#r : open the file for reading, file must exist
#r+ : open the file for reading and wrinting,
##w : open the file for writing,  if the file is not exist, it creates and sets the cursor at the beginning
#w+ : open the file for reading and writing , creats the file is not existing and sets cursor at the beginning of the file
#a+ : if not exist file the creats, for reading and writing

puts "reading all at once :\n"
set fp [open "text.txt" r]
set file_data [read $fp]
puts $file_data
close $fp

puts "\nreading line by line : \n"
set fp2 [open "text.txt" r]
while { [gets $fp2 data] >= 0 } {
    puts $data
}
close $fp2
