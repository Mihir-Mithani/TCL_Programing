#!/bin/bash

for i in {31..35}
do
    bat $i.tcl
    tclsh $i.tcl
done

