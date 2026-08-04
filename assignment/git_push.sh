#!/bin/bash


for i in {61..68}
do
    git add $i.tcl
    git commit -m "Assignment Task $i"
    git push origin main
done

