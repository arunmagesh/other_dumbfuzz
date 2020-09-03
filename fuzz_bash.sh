#!/bin/bash
mkdir ./corpus
declare -i i=1
while :
do
    #zzuf -r 0.5 -s $i -b 1 cat conn.txt > http.fx1
    radamsa sample > sample.tmp
    cp sample.tmp ./corpus/$i
    echo $i | tee -a fuzz_log.txt
    echo "---->>" | tee -a a_log.txt
    echo "request>>" | tee -a  a_log.txt
    cat sample.tmp | tee -a a_log.txt
    echo "response>>" | tee -a a_log.txt
    timeout 0.5s cat sample.tmp | nc localhost 8080 -w 1 | tee -a a_log.txt
    echo "<<-------" | tee -a a_log.txt
    #ping   -c 1 | grep loss | tee -a a_log.txt
    i=$((i+1))
done
