#!/bin/sh
exec 2>&1
cd /home/user/build
#make -j16 DBC=test_build_$(date "+%y%m%d_%H%M")
make -j16
