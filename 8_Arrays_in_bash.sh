#!/usr/bin/env bash

# when working with scripts we'll sometimes need to store pieces of information that contain more than one variable. while we can always create a new variable for any piece of information we need to store, that can become difficult to track and maintain.
# Arrays allow us to store related piece of information and refer to them easily.
# Arrays let us store multiple values
# Bash supports indexed and associative arrays.

# Bash supports two kinds of array
# 1. Indexed arrays
# 2. Associative arrays

# Indexed array :- we set or read pieces of information by referring to their position in a list or their index.
# We can define an indexed array implicitly by providing a list of values within parentheses and descending a name.

# Example :- 

snaks=("Apple" "Banana" "orange")

# We can also explicitly declare an array we declare -a flollowed by name.

# Example :-

Vegitable=("carrot" "Broccoli" "cauliflawer")

# In bash there are no commas between elements like it is available in other languages.

# To retrieve an element inside an aray, we'll use it's zero based notation along with the variable name inside of curly braces.
# this is parameter expension.

echo "Retrieving the element of snaks array"
echo ${snaks[0]}
echo ${snaks[1]}
echo ${snaks[2]}

# we can also set array values by index number
snaks[5]="grapes"

# we do not have to populate every element of an array. 
# these sparse array can be very useful when you need to record data with a particular position in a list insted of just adding it onto the end of the array.

# If we want to add element onto the end of array we can use += operator.
snaks+=("mango")
echo ${snaks[3]}
echo ${snaks[4]}
echo ${snaks[5]}
echo ${snaks[6]}


# to get access of all the element of an array we can use.@ sign
echo ${snaks[@]}

# we can also use for loop to get access of all elements of array.




# associative arrays :- In associative array we can use key to refer the value of any index
# It means we can specify a key and a value instead of just a list of values with numeric keys.
# To do this we will use declare keyword with -A followed by array we want to create

# Example :-


declare -A office
office[city]="New York"
office["Building name"]="AVengers Tower"

# and to acces the element we can use key instead of numbers

echo ${office["Building name"]} is in ${office["city"]}

# we cannot create nested array in bash.
