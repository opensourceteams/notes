#!/bin/bash
echo $HADOOP_INSTALL

HADOOP_INSTALL=/opt/modules/bigdata/hadoop/hadoop-2.6.0

for((i = 1 ; i <= 4 ; i++))
{
   scp -r   $HADOOP_INSTALL/etc/hadoop   S2$i:$HADOOP_INSTALL/etc/
}
