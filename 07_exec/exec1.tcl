# exec command is used to execute shell commands


puts "Sleeping 1sec"
exec sleep 1s

puts "Creating and Listing files  in root directory"

exec touch text1.txt text2.txt

set files [ exec ls ]
puts $files
