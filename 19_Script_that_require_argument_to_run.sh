#!/usr/bin/env bash

# Now look at the case where we have a script thatrequires arguments to run.

if (($#<3)); then
        echo "This command requires three arguments"
        echo "username, userid, and favorite number"
else
        # The program goes here
        echo "username: $1"
        echo "userid: $2"
        echo "favorite number: $3"
fi