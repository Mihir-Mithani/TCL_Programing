#!/bin/bash

for i in {11..25}
do
    bat $i.tcl
    tclsh $i.tcl
done
