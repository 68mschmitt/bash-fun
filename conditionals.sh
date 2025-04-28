#!/bin/bash

# -a is && is AND
# -o is || is OR

echo "Please enter a number: "
read num

if [ $num -gt 0 ]; then
    echo "$num is positive"
elif [ $num -lt 0 ]; then
    echo "$num is negative"
else
    echo "$num is zero"
fi
