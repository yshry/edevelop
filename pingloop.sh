#!/bin/sh
echo [`date`] enter ping loop to $1

while true;do
    ping -c 3 $1 >/dev/null 2>/dev/null
    if test $? -eq 0; then
       break
    fi
    sleep 10
done

echo [`date`] finished ping loop. 