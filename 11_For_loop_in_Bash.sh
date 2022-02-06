#!/usr/bin/env bash

# For loop takes a list or range of values and runs code once for each value in that list.
# Each time the loop runs, a variable within the loop represents the current item in the list.

# For loop :-

# for i in ...
#      do
#         ...
# done 

for i in 1 2 3 4 5 6
    do
        echo $i
done
echo 
echo
echo
echo

# Preventing explicit values like this separated by spaces is useful for short lists.
# But it can get a little bit tedious if we want to cycle through 100 or 1000 or more numbers.
# So we can get list of items from somewhere else like from brace expansion
# Example :-
echo
echo


for j in {1..100}
do
    echo $j
done
echo 
echo
echo
echo
# Another variation of this for loop is through airthmetic evalution
# like we do in C Language.
# Example
echo
echo
for (( a= 101; a<=200; a++))
    do
        echo $a
done

# we can also loop through array element using for loop
# Example:-

declare -a fruits=("apple" "banana" "cherry")
for b in ${fruits[@]}
do
    echo "Fruit is : $b"
done

# we can also use command substitution to provide input for the loop
for c in $(ls)
do
echo "Found a file: $c"
done


# It shows how easy it is to integrate some logic with the operations you use at commend line
# Because they allow us to operate on a list of arbitrary items for loops are very commonly used alongside the output of commands such as find and expansions that will provide 
# a list of files that we as the script developer, don't know the path to at the time we write the script.