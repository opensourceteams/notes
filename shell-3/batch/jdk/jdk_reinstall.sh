#!/bin/bash

INSTALL_SOFT_DIR=/opt/modules/environment/jdk

INSTALL_SOFT_TAR_GZ=jdk-8u65-linux-x64.gz
INSTALL_SOFT_TAR_GZ_PATH=$INSTALL_SOFT_DIR/$INSTALL_SOFT_TAR_GZ

#新建hadoop 安装目录
rm -rf $INSTALL_SOFT_DIR/hadoop-2.6.0/tmp
rm -rf $HADOOP_TMP

for((i = 1 ; i <= 4 ; i++))
{
  TEMP_HOSTNAME=s$i	
   echo 正在初使化第$TEMP_HOSTNAME台机器
   ssh   $TEMP_HOSTNAME    rm  -rf  $INSTALL_SOFT_DIR

   ssh   $TEMP_HOSTNAME    mkdir -p   $INSTALL_SOFT_DIR
   scp -r $INSTALL_SOFT_TAR_GZ_PATH   $TEMP_HOSTNAME:$INSTALL_SOFT_DIR
   ssh $TEMP_HOSTNAME  tar -zxvf  $INSTALL_SOFT_TAR_GZ_PATH -C  $INSTALL_SOFT_DIR/
}

#发送文hadoop安装包


