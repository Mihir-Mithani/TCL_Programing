
set dir [exec pwd]
puts $dir

set dirs [split $dir "/"]

#puts "directories : $dirs"

foreach value $dirs {
    if {$value=="{}"} {
        continue
    } else {
        puts " $value \n"
    }
}
