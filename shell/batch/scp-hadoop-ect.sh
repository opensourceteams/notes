#!/bin/bash
echo $HADOOP_INSTALL

HADOOP_INSTALL=/opt/modules/bigdata/hadoop/hadoop-2.7.1

for((i = 1 ; i <= 7 ; i++))
{
   scp -r   $HADOOP_INSTALL/etc/hadoop_clutser   S$i:$HADOOP_INSTALL/etc/
}
