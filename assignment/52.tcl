#Author : Mihir Mithani
#Assignment

package require Tk

wm title . "Traffic Light Controller"
wm geometry . "200x350"

# Create a canvas to draw the traffic light housing and lights
canvas .c -width 120 -height 280 -background #222222
pack .c -pady 20

# Draw the traffic light housing background
.c create rectangle 20 20 100 260 -fill black -outline #444444 -width 3

# Draw the light circles (Red at top, Yellow in middle, Green at bottom)
set redLight [.c create oval 40 30 80 70 -fill #550000 -outline black]
set yellowLight [.c create oval 40 100 80 140 -fill #554400 -outline black]
set greenLight [.c create oval 40 170 80 210 -fill #005500 -outline black]

# Status label to display the current state
label .lbl -text "State: RED" -font {Helvetica 11 bold}
pack .lbl -pady 5

# State variable: 0 = Red, 1 = Green, 2 = Yellow
set current_state 0

# Procedure to cycle the traffic lights based on a timer
proc change_light {} {
    global current_state redLight yellowLight greenLight

    # Reset all lights to dim/off state
    .c itemconfigure $redLight -fill #550000
    .c itemconfigure $yellowLight -fill #554400
    .c itemconfigure $greenLight -fill #005500

    if {$current_state == 0} {
        # Transition: Red -> Green
        .c itemconfigure $greenLight -fill #00FF00
        .lbl configure -text "State: GREEN"
        set current_state 1
        after 3000 change_light
    } elseif {$current_state == 1} {
        # Transition: Green -> Yellow
        .c itemconfigure $yellowLight -fill #FFFF00
        .lbl configure -text "State: YELLOW"
        set current_state 2
        after 1500 change_light
    } else {
        # Transition: Yellow -> Red
        .c itemconfigure $redLight -fill #FF0000
        .lbl configure -text "State: RED"
        set current_state 0
        after 3000 change_light
    }
}

# Initialize with Red light ON
.c itemconfigure $redLight -fill #FF0000
.lbl configure -text "State: RED"

# Start the automatic color-changing timer loop
after 3000 change_light
