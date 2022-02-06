#!/usr/bin/env bash

# To write to text files from a bash script we use Output redirection operators (> and >>)
# example :- 
# echo "abc" > out.txt overwrites the contents of out.txt
# echo "abc" >> out.txt appends to the end of out.txt

# To read from file we will use the input redirection operator (<)
# To use a text file as input for the read keyword with a while loop which will read the text file line by line giving us the oppurtunity to use each line in turn within the while loop.

# Example :-

for i in  1 2 3 4 5
do
    echo "This is line $i" > ~/textfile.txt
done

# it only shows one line of text  i.e. This is line five because everytime loop runs the line is overwite by the next line in the file because of >

cat ~/textfile.txt # command to show the content of textfile.txt

for j in  1 2 3 4 5
do
    echo "This is line $j" >> ~/textfile2.txt
done

# it shows all the 5 lines in the textfile2.txt

cat ~/textfile2.txt # Commnd to show the content of textfile2.txt

# This functionality can be useful for creating your own log file,
# whereas full overwriting the file each time might be useful method for storing settings or one-off result when you need to use it somewhere later.


# Scripts can also read text files

# Reading textfiles Example :-

while read f 
    do echo "I read a line and it says : $f"
done < ~/textfile2.txt



# Here we use the single less than sign and the filename which redirects the content of file into read.
# Each line that the read keyword ingests returns truw so the while loop keeps going
# when read has nothing left to consume it returns false and the loop ends.



# use :-

# Writing and reading files is a common task for many bash scripts
# Some sccripts will operate using long file maybe searching through terabytes of log files for specific texts with refular expression.
# Other scripts might use a text file as a configurationfile reading and storing settings or customizations that the script will need to use when it runs.