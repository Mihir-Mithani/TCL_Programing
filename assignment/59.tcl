#Author : Mihir Mithani
#Assignment

proc longest_word {lst} {
    set word ""
    set length 0
    foreach str $lst {
        if {[string length $str]>$length} {
            set word $str
            set length [string length $str]
        }
    }
    return $word
}

set lst_str {My name is mihir mithani}

puts "The Longest Word in $lst_str is : [longest_word $lst_str]"
