#!/bin/bash

LOG=/opt/modules/bigdata/spark/spark-1.6.0-bin-hadoop2.6/logs
for((i = 0 ; i <= 4 ; i++))
{
   echo "删除主机: S2"$i"   logs"
   ssh S2$i  rm -rf $LOG
}
