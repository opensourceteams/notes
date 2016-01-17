#!/bin/bash

SCALA_HOME=/opt/modules/bigdata/spark
GZ_FILE=spark-1.6.0-bin-hadoop2.6.tgz
for((i = 1 ; i <= 4 ; i++))
{
   echo 正在初使化第S2$i台机器
   ssh S2$i rm -rf $SCALA_HOME
   ssh S2$i mkdir -p   $SCALA_HOME
   scp -r $SCALA_HOME/$GZ_FILE  S2$i:$SCALA_HOME/
   ssh S2$i tar -zxvf $SCALA_HOME/$GZ_FILE  -C  $SCALA_HOME/
}



