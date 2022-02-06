#!/usr/bin/env bash

# during script development we may find ourself repeating the same set of commands, or 
# writing very similar commands while changing just one or two parameters.
# it is good practice to not repeate yourelf if you don't have to.
# And keeping scripts organized and without duplication makes them a lot more maintainable too.

# To help organize code we can use functions.
# which let us write a set of commands once, and then refer to that code by name whenever we need to run it.


# Function :- Function allow us to repeatedly call a piece of code

# To create a function we'll give the function a name, and follow that with an open and closed parenthesis.
# And then we'll add a set of braces to enclose the commands that will make up the function.

# function needs to be declared before they are used 


# Example :-

greet(){
    echo "Hi there. I am Gautam Jha"
}

echo "And now a greet from my side "
greet

# sometime we need to run the code but with slightly different piece of information 
# in order to pass value to a function so that it can use that value to the code that it contains we can use arguments
# arguments are acomplished by putting the value right after a function call.

# Example :-


learning(){
    echo "I am learning, $1" # $1 represents the first argument passesto the function.
}
# $2 represent second arguments
# $3 represent third arguments 
# and so on...

echo "Now calling learning function"
learning Bash

names(){
    echo "My name is $1 and My Surname is $2"
}

echo "Now calling names function"
names Gautam Jha


# there are some special variable that we can use in functions they are called Function Variable
# 1. $@ :- It represents the list of arguments given to a function
# 2. $FUNCNAME :- It represents the name of the function.

# Example $@ :-

numberthing(){
    declare -i i=1

    for f in $@ # $@ represent all the arguments
    do
        echo "$i : $f"
        (( i+= 1 ))
    done
    echo "This counting was brought to you by $FUNCNAME"
}

echo "Now calling the numberthing function"
numberthing $(ls /)
echo
echo
echo "Now calling the numberthing function by different argument"
numberthing pine brich maple spruce


# speaking of variable when we work with functions, 
# sometime it is useful to have a variable that is not available outside of the function. unless otherwise specified.
# All Variable in bash are global
# Local variables are used to help avoid problems where stored values can be inadvertently changed or used in an improper way.
# To define a local variable we have to use local keyword oherwise variable inside a function is also global

# Example :-

var1="I am Variable 1" # it is a global variable.
 
myfunction(){
    var2="I am variable 2" # It is also a global variable 
    local var3="I am variable 3 " # it is a local variable as it is explicitly defined by keyword local
}
myfunction # calling the funtion so that all the variable will set

echo $var1 # This code will run because var1 is global variable
echo $var2 # This code will also run because var2 is global variable
echo $var3 # This code will not run because var3 is local  variable, we cannot access it outside the function.
