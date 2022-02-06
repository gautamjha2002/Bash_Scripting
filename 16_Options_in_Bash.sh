#!/usr/bin/env bash

# In addition to pass information to a script using argument, we can also specify options.
# Options allow us to pass information into a script from the calling
# options are a combination of a dash and a letter (like -u or -p)
# optons are accessed using the getops keyword
# Options can take arguments of their own
# Options can be specified and used in any order.

# Example :- Let's say we want to make a script that accepts a username and password

# We can use arguments for this but then we need to make sure that the username and password were entered in a certain order.
# to make this eaiser we can use options.

# Example :-

while getopts u:p: option; do
        case $option in
            u) user=$OPTARG;;
            p) pass=$OPTARG;;

        esac
done

echo "user: $user / pass: $pass"


# now we can give input using -u and -p
# -u is for username
# -p is for passowrd

