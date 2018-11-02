#!/bin/sh
set +e;
servertokill=$1;
pid=`ps -x | grep "$servertokill" | grep java | head -n 1 | awk '{print $1}'`;
echo "$1 pid is $pid";
kill $pid;
echo "kill pid $pid done";
exit 0;