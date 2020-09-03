# other_dumbfuzz
My other dumb fuzzing scripts. Maybe or may not be usefull


fuzz_bash.sh 

uses radamsa, mutates it and sends to the network using netcat. All corpus are saved too. 


replay_corpus.sh

This takes the presaved corpus from above and does replay if you want to replay and narrow down the crash. 


It is kinda manual work, but nothing can be automated without losing the flexibility. 
