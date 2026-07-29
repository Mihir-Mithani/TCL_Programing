#Author : Mihir Mithani
#Assignment

#20. Read the contents of 'data.txt' and print them line by line.

set fp [open "data.txt" r]



while { [gets $fp line] >=0 } {
    puts "Line : $line"
}

close $fp
