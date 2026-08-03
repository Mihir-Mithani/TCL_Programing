#!/bin/bash

for i in {52..55}
do
    bat $i.tcl
    tclsh $i.tcl
done

