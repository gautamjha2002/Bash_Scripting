#!/usr/bin/env bash

# when working with bash we sometime need to play with numbers
# Bash can only work with integers not decimal or fraction.

# when we work with numbers in bash we have two tools there 

# 1. Airthmetic expension :- It returns the result of mathematical operations.
# 2. Airthematic evalution :- It performs calculations and changes the value of variable.

# Bash suppoorts 6 basic Airthematic operators

# 1. Addition :- +
# 2. Subtraction :- -
# 3. Multiplication :- *
# 4. Division :- /
# 5. Modulo :- %
# Exponentiation :- **

echo "Using Addition :- doing  4+4"
echo $((4+4))

echo "Using Subtraction : doing 8-5"
echo $((8-5))

echo "Using Multiplication : doing 2*3"
echo $((2*3))

echo "Using Division : doing 8/4"
echo $((8/4))

# we can do complex maths using nested parentheses

echo "doing complex math (3+6) -5 * (5*2)"
echo $(( (3+6) - 5 * (5*2) ))

# we can use variable insted of number alo

echo "Using variable instear of number a=3 and doing a+=7"
a=3
echo $((a+=7))

# we can use increment operator ++ also to increment the variable with 1

b=2
echo "using increment operator with b , here b=2"
((b++))
echo $b

# we can also decrement the variable also using --
c=5
echo "Decrementing the variable c with 1 the value of c is 5"
((c--))
echo $c

# variables in bash are treated as string if we don not tell bash explicitly that it is integer
# for example if we do

a=$a+2
echo $a # it is treated as string +2 is assigned to the value of a variable 

# for explicitly telling bash that it is a integer we can do

declare -i d=4 # now b is declaredd as integer
# now if we do
d=$d+3 # now 3 is added to d

echo $d

echo "Using division :- doing  1/3"
echo $((1/3)) # bash do not work with fraction or decimal number so the result will be 0


echo "Using modulo :- doing  4%2" 
echo $((4%2)) # it will print the reminder after dividing 4/2 i.e. 0

echo "Using modulo again :- doing  4%3"
echo $((4%3)) # the output will be 1

# bash can do integer math but not  decimal or fractional
# Values can be  literal integres or variables
#  To do more precise math, consider using bc or awk

# how to use bc in bash 
# example

echo "Using bc in bash"
declare -i x=1
declare -i y=3

e=$(echo "scale=3; $x/$y" | bc)
echo $e

# scale here tells the bash to how many decimal point the output should be displayed

echo "there is a environment variable called RANDOM it returns a random number between 0 and 32767"
echo $RANDOM

echo "we can give range to generate a random number by adding 1 in random number modulo the range of number"
echo "for example :- 1+ Random % 10 to generate the random number between 1 and 10"
echo $((1 + $RANDOM % 10))

echo "to generate random number between 1 and 20 we can just modulo it by 20"
# example 

echo $((1+ $RANDOM % 20))

# if we don not have to do lots of math we can use bash language there but if we want to use lots of maths BASH script is not recommended 