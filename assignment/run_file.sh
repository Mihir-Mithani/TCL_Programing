#!/bin/bash

for i in {11..15}
do
    bat $i.tcl
    tclsh $i.tcl
done
