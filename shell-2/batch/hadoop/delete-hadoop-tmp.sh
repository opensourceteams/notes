#!/bin/bash


for((i = 0 ; i <= 4 ; i++))
{
   echo "删除主机: S2"$i"   HADOOP_HOME/tmp"
   ssh S2$i  rm -rf /tmp/hsperfdata_hadoop
   ssh S2$i  rm -rf /opt/modules/bigdata/hadoop/hadoop-2.6.0/tmp
}
