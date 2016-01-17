#!/bin/bash

GZ_FILE=~/.bashrc
for((i = 1 ; i <= 4 ; i++))
{
   echo 正在初使化第S2$i台机器
   scp -r $GZ_FILE  S2$i:$GZ_FILE
}



