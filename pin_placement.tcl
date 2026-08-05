# Author : Mihir Mithani

set log [open "Logs_Pin_Placement.txt" w+]
for {set i 0} {$i<=24} {incr i} {
    set pin($i) {0 0}
}

puts $log "=====Before Placement : =====\n"
for {set i 0} {$i<20} {incr i} {
    puts $log "Pin$i : $pin($i)"
}

for {set i 0} {$i<4} {incr i} {
    switch $i {
        0 {
            set x 100
            set y 0
            for {set j 0} {$j<5} {incr j} {
                set pin($j) [list $x $y]
                incr x 100
            }
        }
        1 {
            set x 0
            set y 100
            for {set j 5} {$j<10} {incr j} {
                set pin($j) [list $x $y]
                incr y 100
            }
        }
        2 {
            set x 100
            set y 500
            for {set j 10} {$j<15} {incr j} {
                set pin($j) [list $x $y]
                incr x 100
            }
        }
        3 {
            set x 500
            set y 100
            for {set j 15} {$j<20} {incr j} {
                set pin($j) [list $x $y]
                incr y 100
            }
        }
    }
}

puts $log "\n=====After Placement : =====\n"


for {set i 0} {$i<20} {incr i} {
    puts $log "Pin$i : $pin($i)"
}

puts "Logs Saved at \"Logs_Pin_Placement.txt\""
close $log
