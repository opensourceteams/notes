#!/bin/bash

HADOOP_INSTALL=/opt/modules/bigdata/hadoop/hadoop-2.6.0

for((i = 1 ; i <= 4 ; i++))
{
   HOSTNAME=s$i	
    echo  同步节点 $HOSTNAME HADOOP的配置
   scp -r   $HADOOP_INSTALL/etc/hadoop   $HOSTNAME:$HADOOP_INSTALL/etc/
}
