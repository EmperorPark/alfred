#!/bin/sh
cd /home/user/build
rm build.log*
./alfred_build.sh > build.log_$(date "+%Y-%m-%d_%H:%M:%S")
echo -e "to: mail@example.com\nsubject: Build Message\n"| (cat - && uuencode build.log* build.html) | ssmtp mail@example.com