#!/bin/bash

FRAME_HOME=/opt/modules/bigdata/spark/spark-1.6.0-bin-hadoop2.6
ETC=conf

for((i = 1 ; i <= 4 ; i++))
{
   scp -r    $FRAME_HOME/$ETC  S2$i:$FRAME_HOME/
}
