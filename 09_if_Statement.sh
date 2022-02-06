#!/usr/bin/env bash

# Control Structures in Bash

# 1. Control Structure allows us to control how script execution happens.
# 2. Run Specified code Based on condition.


# one of the control structure is if statement.

# if statements execute code based on a conditional expression.

#             if ....
#               then
#                  ....
#              fi

# Syntax :-
#                   if condition
#                       then
#                          script
#                   fi


# we can also use if else statement 
# if else allows use to execute else statement if condition of if is false.

# Syntax :-
#                      if condition
#                         then
#                            script
#                       else
#                             script
#                        fi

# The expression is a test of some kind. Often, the extended test with two bracket or an arithmetic evalution.
# It can also be a command because command always finish with zero and non-zero status interpreted as true or false.
# 

# Example :-
echo "if else example 1 :-"
echo
declare -i a=3

if [[ $a -gt 4 ]]
    then
        echo "$a is greater then 4."
else
    echo "$a is not greater then 4."
fi     
echo
# we can also use arithmetic evalution bu using circular brackets
# Example :-
echo "if else example 2 with arithmetic evalution :-"
echo
echo
declare -i x=9

if (( $x > 4 ))
    then
        echo "$x is greater then 4."
else
    echo "$x is not greater then 4."
fi 
echo

# we cal also use else if statement in BASH using elif keyword
# in this bash first check if statement if it is not true 
# it goes to elif statement if elif statement is true then it execute the elif statement script 
#otherwise it goes to else statement and execute else  statement script

# Example :-
echo "if elif statement example :-"
echo
echo
declare -i y=5

if (( $y > 6 ))
    then
        echo "$x is greater then 4."
elif (( $y > 3 ))
    then
        echo "$y is greater then 3"
else
    echo "$y is not greater then 4."
fi 
echo