#!/usr/bin/env bash

# When we ask for input, we have to consider the possibility that a user will simply ignore our request.
# what happens if someone skips a prompt just by pressing evince-thumbnailerwhatever variable you were setting based on that value is now empty.
# and that could cause problem later in the script.


# there is a few way to deal with this
# one way of doing this is by using seect command

# we can also modify how we use the read command by using -i option
# in order to suggest a response to the user and if they don't change it or if they just press return 
# that suggested value becomes the value we are asking for.

# Example :-

read -ep "Favorite color?" -i "Blue" favcolor
echo $favcolor

# we need to use e option here in order to use the read line interpreter which lets us put text into the editing buffer
# into the space where the text, the user types is stored.
# So when the prompt appears, there's already texts there to avoid an empty response.


