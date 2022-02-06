#!/usr/bin/env bash

# Case statement :-
# -> Checks an input against a set of predefined values
# -> Runs code when a input matches a condition 

animal="Dog"

case $animal in
    cat|Cat) echo "Animal is cat";;
    dog|Dog) echo "Animal is dog";;
    tiger|Tiger) echo "Animal is tiger";;
    lion|Lion) echo "Animal is lion";;
    *) echo "No Match found!!"
esac

# we can use pipe ( | ) character to separate items in the list of things to match
# We can use asterisk ( * ) to execute the case when nothing matches

# case statements are useful for menus and working with user input
# case statement gives us the more elegant way to work with multiple conditions.