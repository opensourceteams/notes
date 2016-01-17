#!/bin/bash

TEMP_DIR
TEMP_DETAL_DIR= /opt/modules/bigdata/hadoop/hadoop-2.6.0/logs/*  

for((i = 0; i <= 4 ; i++))
{
   HOSTNAME=s$i	
    echo  删除节点 $HOSTNAME HADOOP的logs
    ssh $HOSTNAME   rm -rf    $TEMP_DETAL_DIR
}
