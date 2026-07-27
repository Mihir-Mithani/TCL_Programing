#trimright string ?trimcharacter?
#removes trimcharacters in the left end of the string. The default trimcharacters is whitespace.

set s1 "VLSI DESIGN ENGINEERING"
set s2 "DESIGN"
puts "Trim right : \"$s2\" in \"$s1\""
puts "new string : \"[string trimright $s1 $s2]\""
