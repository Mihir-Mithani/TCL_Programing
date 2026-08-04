#Author : Mihir Mithani
#Assignment

# Define a list of questions and their corresponding correct answers
set questions {
    {"What is the default file extension for Tcl scripts?" ".tcl"}
    {"Which command is used to print output to the console in Tcl?" "puts"}
    {"Which command evaluates mathematical expressions in Tcl?" "expr"}
    {"Are variables in Tcl explicitly typed? (yes/no)" "no"}
    {"Which keyword is used to create a procedure in Tcl?" "proc"}
}

set score 0
set q_num 1

puts "===== Welcome to the Tcl Quiz Game! =====\n"

foreach item $questions {
    set q [lindex $item 0]
    set ans [lindex $item 1]

    puts "Question $q_num: $q"
    puts -nonewline "Your Answer: "
    flush stdout
    gets stdin user_ans

    # Clean up user input by trimming surrounding whitespace
    set user_ans [string trim $user_ans]

    # Compare case-insensitively
    if {[string equal -nocase $user_ans $ans]} {
        puts "Correct!\n"
        incr score
    } else {
        puts "Wrong! The correct answer was: $ans\n"
    }
    
    incr q_num
}

puts "========================================="
puts "Quiz Finished!"
puts "Your Final Score: $score out of [llength $questions]"
puts "========================================="