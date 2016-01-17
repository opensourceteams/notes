#!/bin/bash

HADOOP_DIR=/opt/modules/bigdata/hadoop
HADOOP_TMP=/tmp/hsperfdata_hadoop

#新建hadoop 安装目录
rm -rf $HADOOP_DIR/hadoop-2.6.0/tmp
rm -rf $HADOOP_TMP

for((i = 1 ; i <= 4 ; i++))
{
   echo 正在初使化第S2$i台机器
   ssh S2$i rm -rf $HADOOP_DIR
   ssh S2$i rm -rf $HADOOP_TMP
   ssh S2$i mkdir -p   $HADOOP_DIR
   scp -r $HADOOP_DIR/hadoop-2.6.0.tar.gz   S2$i:$HADOOP_DIR/
   ssh S2$i tar -zxvf $HADOOP_DIR/hadoop-2.6.0.tar.gz -C $HADOOP_DIR/
}

#发送文hadoop安装包


