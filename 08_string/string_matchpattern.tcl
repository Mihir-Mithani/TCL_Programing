#match pattern string
#returns 1 if the string matches the pattern.

set s1 "test-id@goldenLightVlsi.com"
set s2 "*@*.com"

puts "Matching pattern : $s2 in : $s1"

if { [string match $s2 $s1 ] } {
    puts "Match Found"
} else {
    puts "Match not found"
}
