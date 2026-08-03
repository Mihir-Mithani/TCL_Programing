#!/bin/bash


for i in {41..57}
do
    git add $i.tcl
    git commit -m "Assignment Task $i"
    git push origin main
done

