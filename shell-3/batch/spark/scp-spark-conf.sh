#!/bin/bash

INSTALL_SOFT_HOME=/opt/modules/bigdata/spark/spark-1.6.0-bin-hadoop2.6

for((i = 1 ; i <= 4 ; i++))
{
   HOSTNAME=s$i	
    echo  同步节点 $HOSTNAME    spark 的配置
   scp -r   $INSTALL_SOFT_HOME/conf   $HOSTNAME:$INSTALL_SOFT_HOME/
}
