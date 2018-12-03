#!/bin/bash
gcc -m32 -O3 -Wall -c -fmessage-length=0 -o de.o "../de.c" -lm
mkdir cJSON
gcc -m32 -O3 -Wall -c -fmessage-length=0 -o "cJSON/cJSON.o" "../cJSON/cJSON.c" -lm
gcc -m32 -O3 -Wall -c -fmessage-length=0 -o inputData.o "../inputData.c" -lm
gcc -m32 -O3 -Wall -c -fmessage-length=0 -o html.o "../html.c" -lm
gcc -m32 -O3 -Wall -c -fmessage-length=0 -o main.o "../main.c" -lm
gcc -m32 -O3 -Wall -c -fmessage-length=0 -o p.o "../p.c" -lm
gcc -m32 -O3 -Wall -c -fmessage-length=0 -o plot.o "../plot.c" -lm
gcc -m32 -o "Task2 Linux 32-bit" "cJSON/cJSON.o" de.o html.o inputData.o main.o p.o plot.o -lm
rm -rd *.o cJSON
