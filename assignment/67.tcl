#Author : Mihir Mithani
#Assignment

proc compare_files {file1_path file2_path} {
    set f1 [open $file1_path r]
    set f2 [open $file2_path r]
    set line_num 1
    while {1} {
        set has1 [gets $f1 line1]
        set has2 [gets $f2 line2]
        if {$has1 < 0 && $has2 < 0} {
            break
        }
        if {$has1 < 0 || $has2 < 0 || $line1 ne $line2} {
            puts "Difference found at Line $line_num:"
            
            if {$has1 >= 0} {
                puts "  $file1_path: $line1"
            } else {
                puts "  $file1_path: <EOF>"
            }
            
            if {$has2 >= 0} {
                puts "  $file2_path: $line2"
            } else {
                puts "  $file2_path: <EOF>"
            }
            puts ""
        }
        incr line_num
    }
    close $f1
    close $f2
    puts "File comparison completed."
}
compare_files "git_log.txt" "git_log.log"