#!/usr/bin/env bash

# Loops :-
# Loops Run a piece of code repeatedly
# There are various loops available in BASH
# While loops :- while loops run while a condition is true
# Until loops run until a condition is true.


# while loops :- It runs while a condition is true

#       while ...
#           do
#               .....
#        done

# Example of while loop:-

echo "While Loop"

declare -i n=0

while (( n < 10 ))
do
    echo "n:$n"
    (( n++ ))
done

echo
# until loop :- It looks similar to while loop but until loops run until a condition is true.

# Example of until loop :-
echo
echo "until loop"

declare -i a=0

until (( a == 10 ))
do 
    echo "a:$a"
    (( a++ ))
    sleep 1 # this is just extra thing added to tell the script to pause for 1 second
done

# Note :- Both of these loop can cause infinte loops if the condition in these loop is always true.

# so it is recommended to always check your condition.

# if you mistakenly created a script with infinite loop and you ran the loop the use Ctrl+c to exits from the script to terminal
