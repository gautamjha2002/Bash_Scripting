#!/usr/bin/env bash

# In scripts we often need to ask for input interactively.
# Sometimes it's not practical to expect the user to provide all information that script needs to arguments or options.
# or the scripts may not always need the same information.
# and we'll need to follow a process the user selects and ask for information accordingly/

# To do this we use read keyword

# as we saw earlier we can use read keyword to read lines from a file
# but if we don't provie a file to read from the read command pauses the execution of script. 
# until the user provides a text string in response and assigns that response to a variable we can use in script.


# Example :-

echo "What is yor name?"
read name # here name is a variable when user provide any string it is stored in name variable
# Some options are available with read for example if we are asking for password we can use -S for silent
echo "What is your password?"
read -s pass # -s helps to does't show the character that we type
# we can ask for input all on one line with a -p option which writes out a prompt and a response area on the same line
read -p "What is your favorite animal? " animal # i put the space after the string because the input area will come directly after the text string, if i don't leave a space it'll look like a little bit crumbed


# Lets display the values stored in the variable
echo
echo "name: $name, Pass: $pass, animal: $animal"


# there is another way of getting input as a user friendly menue form 
# for that we will use the keyword select

# select is followed by the variable you want to add and then the word in 
# followed by the list of option to select from
# After that comes a do block encapsulating whatever you want to do with the selection
# it is important to break at the loop when you have a response, otherwise the loop will continue foreever.

echo "Favourite Vegitable" 
select Vegitable in "Carrot" "Radish" "Cauliflower" "Brinjal"
do
        echo "Your Favourite Vegitable is :- $Vegitable"
        break
done

# This kind of input pairs very nicely with a case function to respond to the user selections.

# Lets work with case :-

echo "Favourite fruit"
select Fruits in "Apple" "Banana" "Pomegranate" "Mango" "quit"
do
        case $Fruits in 
            Apple) echo "Your favourite fruit is Apple";;
            Banana) echo "Your favourite fruit is Banana";;
            Pomegranate) echo "Your favourite fruit is Pomegranate";;
            Mango) echo "Your favourite fruit is Mango";;
            quit) break;;
            *) echo "I am not sure what it is"
        esac
done