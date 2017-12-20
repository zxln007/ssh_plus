#!/bin/bash
#
# Created on 2017.9.10
#

if [ $# -ge 2 ];then
        user=$1
        command=$2
        parameter=$3
        for i in `cat list`;
        do echo "=============================$i================================";
        ssh $i "su - $user -c '${command} ${parameter}'";
        done
else
        command=$1
        parameter=$2
        for i in `cat list`;
        do echo "=============================$i================================";
        ssh $i "${command} ${parameter}";
        done
fi
