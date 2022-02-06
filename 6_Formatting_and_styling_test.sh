#!/usr/bin/env bash

# one option offered by the echo builtin is -e, which tells bash to interprete escaped characters like \t, \n,\a, and other control characters.
# escaped sequences can represent special characters like tab, new line, and they can also be used to change the color of text in the terminal.

# when we write scripts we often want to format text to allign a document columns or to indent lines.
# tab character play role in this
# Example we can make some column headers with tabs between them.
echo "let's see tab escape sequence ( \t )"
echo
echo -e "Name\t\tNumber"; echo -e "Gautam\t\t123"
echo
# the new line character tells the terminal to put the following text on the new line.
echo "let's see new line escape sequence ( \n )"
echo
echo -e "This text\nbreakes over\nthree lines"
echo 

# bell escape charater used to alert the user, it is commonly used to represent error condition or to notify the user that attention is needed
# bell is represented by \a
# it generally makes sound to notify user

echo "let's see bell in action"
echo -e "Alert! \a"


# when terminal needs to draw our text interface it uses special character to place the cursor in the screen and set the color of the character are
# The tab, newline and bell are also controlled by the sspecial charecter
# with echo -e we can specify the control character with letters or through numeric code which represent an specific control character

# one of these is represented by \033 and bracket followed by foreground and background color to use


# Some common terminal color and style

#       Color               FG              BG
       

#       Black               30              40
#       Red                 31              41
#       Green               32              42
#       Yellow              33              43
#       Blue                34              44
#       Magenta             35              45
#       cyan                36              46
#       White               37              47


# Some other common terminal Brighter color and style

#         Color                    FG              BG


#       Bright Black               90              100
#       Bright Red                 91              101
#       Bright Green               92              102
#       Bright Yellow              93              103
#       Bright Blue                94              104
#       Bright Magenta             95              105
#       Bright cyan                96              106
#       Bright White               97              107



# Some tyle

#           Style       


#           Reset                   0
#           Bright                  1
#           Dim                     2
#           Itelic                  3
#           Underline               4
#           Blinking                5
#           Inerted                 6
#           Strikethrough           7


# lets see some example how our colorised result look like



echo "Lets change the text color to yellow and background to Blue"
echo
echo -e "\033[33;44mColored text\033[0m" # at last the 0m here represent the style of text
echo
echo
echo "Lets change the text color to bright red and background to Bright black"
echo
echo -e "\033[91;100mColored text\033[0m"


echo "Let's cange color of text with styling"
echo
echo -e "\033[4;32mExample \033[1;94mText\033[0m"

echo -e "\033[91;100mColored text\033[0m"

# formatting text over and over again is not a good idea so we have to store them in variable and use variable insted.

# Example
echo "Coloring and formatting using variable"

ulinered="\033[4;31;40m" # for underline and red
red="\033[31;40m" # just red without the underline
none="\033[0m"
echo -e $ulinered"ERROR:"$none$red" Something went wrong."$none

# coloring and fromating text is useful when we want to draw attention on something or personalizing our scripts.
