#!/usr/bin/env bash

# Variables allow us to store and retrieve values by name.
# Bash Variables are a special case of parameter expension
# Variables are named with alphanumeric characters
# Variable names are case-sensitive
# For example : mygreeting=Hello

mygreeting=Hello
# if we vant to put space in values of variable we have to use double quotes
mygreeting2="Good Morning"
# we can also use numbers
number=6


# using all variables

echo $mygreeting
echo $mygreeting2
echo $number



# we can also reassign the value of variable in the same program

myvar="Hello"
echo "The value of myvar is : $myvar"

# reassigning the value of variable 

myvar="Nameste"
echo "Now thw value of myvar is : $myvar"


# we can also make variable as read only variable so that it cant be changed later

declare -r name="Gautam Jha"
echo "My name is $name"
# Now we are trying to change it 

name="Rahul" # this line prints an error on the screen
echo "Now the value of variable is $name" # this line gives value of variable as Gautam Jha


# we can also declare a variable that that transform textt into all lowercase or uppercase

# text in loercase
declare -l lowerstring="This is some TEXT!"
echo "The value of the lowerstring variable is : $lowerstring"
# we can change the value of this lowerstring variable also but the property of it will not change it will always show value in lower string
lowerstring="LETS CHANGE THE VALUE!"
echo "Now the value of lowerstring variable is: $lowerstring"

# We can also change it in uppercase
declare -u upperstring="this is some text typed in lowercase in script"
echo "The value of th upperstring variable is $upperstring"
# we can change the value of this upperstring variable also but the property of it will not change it will always show value in upper string.
upperstring="Now I am CHANGING the VALUE"
echo "the value of upperstring variable is $upperstring"


# there are som environment variable defined in our system we can see it by command 
# -----> env 
