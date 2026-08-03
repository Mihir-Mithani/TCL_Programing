#Author : Mihir Mithani
#Assignment

package require Tk

wm title . "Tooltips and Labels Example"
wm geometry . "350x220"

# 1. Create standard labels
label .title_lbl -text "Tcl/Tk GUI Enhancements" -font {Helvetica 12 bold}
pack .title_lbl -pady 15

label .info_lbl -text "Hover your mouse over the button to see a tooltip." -font {Helvetica 10}
pack .info_lbl -pady 5

# 2. Create a button widget
button .action_btn -text "Hover Over Me" -font {Helvetica 10}
pack .action_btn -pady 20

# --- Custom Tooltip Implementation ---

# Create a hidden top-level window for the tooltip
toplevel .tooltip -relief solid -borderwidth 1
wm overrideredirect .tooltip 1
wm withdraw .tooltip
label .tooltip.lbl -background "#ffffe0" -foreground "#000000" -padx 4 -pady 2 -font {Helvetica 9}
pack .tooltip.lbl

# Procedure to display the tooltip near the cursor
proc show_tooltip {text x y} {
    .tooltip.lbl configure -text $text
    wm geometry .tooltip "+[expr {$x + 15}]+[expr {$y + 15}]"
    wm deiconify .tooltip
}

# Procedure to hide the tooltip when the mouse leaves
proc hide_tooltip {} {
    wm withdraw .tooltip
}

# Bind mouse events to the button
bind .action_btn <Enter> {
    show_tooltip "Click this button to perform an action!" %X %Y
}
bind .action_btn <Leave> {
    hide_tooltip
}
