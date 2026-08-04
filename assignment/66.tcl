#Author : Mihir Mithani
#Assignment

proc remove_duplicate_lines {input_file output_file} {
    set fin [open $input_file r]
    set fout [open $output_file w+]
    set unique_lines [dict create]
    while {[gets $fin line] != -1} {
        dict set unique_lines $line 1
    }
    close $fin
    foreach line [dict keys $unique_lines] {
        puts $fout $line
    }
    close $fout
    puts "Successfully removed duplicate lines from '$input_file'. Output saved to '$output_file'."
}

remove_duplicate_lines "git_log.txt" "git_log_removed.txt"