#Author : Mihir Mithani
#Assignment

proc find_word_in_file {filename search_word} {
    if {![file exists $filename]} {
        return -code error "Error: File '$filename' does not exist."
    }

    set file_handle [open $filename r]
    set line_number 1
    set matching_lines {}

    while {[gets $file_handle line] != -1} {
        if {[string match "*$search_word*" $line]} {
            lappend matching_lines $line_number
        }
        incr line_number
    }

    close $file_handle
    return $matching_lines
}

puts " Index Line : [find_word_in_file "output.txt" "mihir"] "