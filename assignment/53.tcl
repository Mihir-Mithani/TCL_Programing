#Author : Mihir Mithani
#Assignment

proc merge_sorted_files {file1_path file2_path output_path} {
    # Open input files for reading ("r") and the output file for writing ("w")
    set f1 [open $file1_path r]
    set f2 [open $file2_path r]
    set fout [open $output_path w]

    set has1 [gets $f1 line1]
    set has2 [gets $f2 line2]

    while {$has1 >= 0 || $has2 >= 0} {
        if {$has1 >= 0 && $has2 >= 0} {
            if {[string compare $line1 $line2] <= 0} {
                puts $fout $line1
                set has1 [gets $f1 line1]
            } else {
                puts $fout $line2
                set has2 [gets $f2 line2]
            }
        } elseif {$has1 >= 0} {
            puts $fout $line1
            set has1 [gets $f1 line1]
        } else {
            puts $fout $line2
            set has2 [gets $f2 line2]
        }
    }

    close $f1
    close $f2
    close $fout
    
    puts "Successfully merged '$file1_path' and '$file2_path' into '$output_path'."
}

merge_sorted_files  "username.txt" "pass.txt" "output.txt"
