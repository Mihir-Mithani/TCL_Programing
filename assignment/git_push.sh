#!/bin/bash


for i in {17..25}
do
    git add $i.tcl
    git commit -m "Assignment Task $i"
    git push origin main
done


