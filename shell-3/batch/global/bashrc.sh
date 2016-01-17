#!/bin/bash

GZ_FILE=~/.bashrc
for((i = 1 ; i <= 4 ; i++))
{
   TEMPHOSTNAME=s$i	
   echo 正在初使化第$TEMPHOSTNAME台机器
   scp -r $GZ_FILE  $TEMPHOSTNAME:$GZ_FILE
}

