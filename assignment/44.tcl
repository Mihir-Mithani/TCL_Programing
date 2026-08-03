#Author : Mihir Mithani
#Assignment

# Load the Tk package to enable GUI components
package require Tk

# Set the title of the main application window
wm title . "Tcl/Tk GUI Example"

# Define a procedure to handle button clicks
proc on_button_click {} {
    .lbl configure -text "Button Clicked Successfully!"
}

# Create a label widget
label .lbl -text "Welcome to Tcl/Tk GUI" -font {Helvetica 12}
pack .lbl -padx 20 -pady 10

# Create a button widget that triggers the procedure
button .btn -text "Click Me" -command on_button_click
pack .btn -padx 20 -pady 10

# Create an exit button to close the window
button .quit -text "Exit" -command exit
pack .quit -padx 20 -pady 10
