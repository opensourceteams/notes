#!/bin/bash

HADOOP_TMP_DIR=/tmp/hadoop-hadoop

for((i = 0 ; i <= 7 ; i++))
{
   ssh S$i  rm -rf   $HADOOP_TMP_DIR
}
