#!/usr/bin/env bash

# In real world there are chances that we want some information from user to use in our script
# For this we can use arguments

# Argument are special type of variable that is specified by the user to use in our scripts
# Argument could be anything like a file or folder you want to create or work with, a username, a string of text to search for and so on.
# They are passed into the script by typing them after the script name.
# Arguments are represented by numbered variables ($1, $2, and so on) and they're assigned in the order that they're provided at the command line.

# starting work with arguments

# $0 contains the name of script
# $1 contains the first argument that we have given
# $2 contaions the second argument that we have given and so on...

# Example :-

echo "The $0 script got the argument $1"
echo "The second argument is $2"

# if we want to give space in the argument we are providing in terminal just write the argument in quotes



# now if we don't know the number of argument that user is going to provide
# Then we can use an array of arguments.
# array of arguments is reffered by $@ and we can use for loop to walk through it.


# Example :-

for i in $@
do
    echo $i
done


# There is one more variable that is $# which contains the number of arguments

echo "There are $# arguments, in this scripts."