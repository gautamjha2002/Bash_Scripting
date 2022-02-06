#!/usr/bin/env bash
clear

# In addition to the single bracket test notation bash gives us double bracket test notation called extended test.
# Extended test supports comparisions that test runs and add other features.
# Extended test gives us the same operation as test and add few other helpful features.
# with  extended test we can use more than one expression to create moe complex logic 

echo
echo "we can ask wheather my home directory is a directory and wheather the bash binary exists."
echo
echo "Logical and operation ( && ):- "
[[ -d ~ && -a /bin/bash ]]; echo $?
echo
echo "if any expression is false than the returned value is 1 while using &&"
echo
[[ -d ~ && -a /bin/gautam ]]; echo $?
echo
echo "logical or operation ( || ):- "
echo "if any expression is true than the returned value is 0 while using ||"
echo
[[ -d ~ || -a /bin/gautam ]]; echo $?
echo

# we can also use this logical operator outside the extended test brackets to run command conditionally
# example :-
echo "We can test wheather my home directory is a directory and echo ~ is a directory"
echo
[[ -d ~ ]] && echo ~ is a directory
# in above example the test return sucess so bash run the echo statement.
# if the test statement fails the echo statement will not run
# Example :-
echo
echo
[[ -d /bin/bash ]] && echo ~ is a directory
echo
echo

true && echo "Success!"
false && echo "Success!"

# we can also use extended test with regular expression

[[ "cat" =~ c.* ]]; echo $? # it returns true
[[ "bat" =~ c.* ]]; echo $? # it returns false

# Extended test offers more features
# Test is more widely compatible with other shell
# so it is recommended to use extended test 
# if you want to ship yor script you must use extended test.