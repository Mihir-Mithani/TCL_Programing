#!/bin/bash

for i in {61..68}
do
    bat $i.tcl
    tclsh $i.tcl
done

