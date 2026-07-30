#Author : Mihir Mithani
#Assignment

set emails {
    "mihir.mithani@example.com"
    "invalid-email.com"
    "test.user+alias@domain.co.in"
    "missing@domain"
}

set email_pattern {^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$}

foreach email $emails {
    if {[regexp $email_pattern $email]} {
        puts "Valid   : $email"
    } else {
        puts "Invalid : $email"
    }
}
