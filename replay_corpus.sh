#!/bin/bash
for start in {80..10090}
do    
cat ./corpus/$start | nc localhost 8080 -w 1
echo $start 
#sleep 0.01
done
