#!/bin/bash

for i in {1..68}
do
    mv assignment5_$i.tcl $i.tcl
    echo " renamed assignment5_$i.tcl to $i.tcl "
    sleep 0.1s
done
