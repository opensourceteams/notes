#!/bin/bash

INSTALL_SOFT_DIR=/opt/modules/environment/scala

INSTALL_SOFT_TAR_GZ=scala-2.10.6.tgz
INSTALL_SOFT_TAR_GZ_PATH=$INSTALL_SOFT_DIR/$INSTALL_SOFT_TAR_GZ



for((i = 1; i <= 4 ; i++))
{
  TEMP_HOSTNAME=s$i	
   echo 正在初使化第$TEMP_HOSTNAME台机器
   ssh   $TEMP_HOSTNAME    rm  -rf  $INSTALL_SOFT_DIR

   ssh   $TEMP_HOSTNAME    mkdir -p   $INSTALL_SOFT_DIR
   scp -r $INSTALL_SOFT_TAR_GZ_PATH   $TEMP_HOSTNAME:$INSTALL_SOFT_DIR
   ssh $TEMP_HOSTNAME  tar -zxvf  $INSTALL_SOFT_TAR_GZ_PATH -C  $INSTALL_SOFT_DIR/
}


