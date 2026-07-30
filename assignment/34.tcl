#Author : Mihir Mithani
#Assignment

puts -nonewline "Enter your username: "
flush stdout


set username [gets stdin]

if {$username == "Mihir"} {
    puts -nonewline "Enter Password for $username : "
    flush stdout
    set password [gets stdin]
    if {$password==12345678} {
        puts "\n-----------------\n--Login Success--\n-----------------\n\nWelcome $username"
    } else {
        puts "Incorrect Password!!!!!!\nTry again!!!!!"
    }
} else {
    puts "No User Exists as $username....try again..."
}
