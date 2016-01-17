#!/bin/bash

HADOOP_DIR=/opt/modules/bigdata/hadoop

HADOOP_TAR_GZ=hadoop-2.6.0.tar.gz
HADOOP_TAR_GZ_PATH=$HADOOP_DIR/$HADOOP_TAR_GZ

#新建hadoop 安装目录
rm -rf $HADOOP_DIR/hadoop-2.6.0/tmp
rm -rf $HADOOP_TMP

for((i = 1 ; i <= 4 ; i++))
{
  TEMP_HOSTNAME=s$i	
   echo 正在初使化第$TEMP_HOSTNAME台机器
   ssh   $TEMP_HOSTNAME    rm  -rf  $HADOOP_DIR

   ssh   $TEMP_HOSTNAME    mkdir -p   $HADOOP_DIR
   scp -r $HADOOP_TAR_GZ_PATH   $TEMP_HOSTNAME:$HADOOP_DIR
   ssh $TEMP_HOSTNAME  tar -zxvf  $HADOOP_TAR_GZ_PATH -C  $HADOOP_DIR/
}

#发送文hadoop安装包


