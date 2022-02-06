#!/usr/bin/env bash

# composing strings which include variables or other data can get a littel bit tedious 
# Another way to do it is  using printf builtin

# printf builtin gives us the ability to use place holder when we compose strings and format values in ways that we can make our script and our output look cleaner

# Example using printf

printf "Now we are going to perform airthmatic operation 2+2 and 3/1"
echo
printf "Lets do it !"
echo 
echo doing......
echo
printf "The results are : %d and %d\n" $(( 2+2 )) $(( 3/1 ))
echo
echo done.....


# Printf is easier to read and work with.
# In BASH there is always more than one way to do something.
# A benifit of printf is that it allow us to format output a little bit more eaily in comparision to echo.

# Example :-




echo "----10---- | --5--" # the text label is of 10 character string and the number is of 5 digits

echo "Right-aligned text and digits"
printf "%10s: %5d\n" "A Label" 123 "B Label" 456

echo "Left aligned text, right-aligned digits"
printf "%-10s: %5d\n" "A Label" 123 "B Label" 456

echo "Left-aligned text and digits"
printf "%-10s: %-5d\n" "A Label" 123 "B Label" 456


echo "Left-aligned text, right-aligned and padded digits"
printf "%-10s: %05d\n" "A Label" 123 "B Label" 456

echo "----10---- | --5--"