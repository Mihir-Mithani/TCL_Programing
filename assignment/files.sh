#!/bin/bash

echo "Creating Files"

for i in {1..68}
do
    cp template.tcl assignment5_$i.tcl
    echo "created assignment5_$i.sh"
    sleep 0.1s
done

