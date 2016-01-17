#!/bin/bash


for((i = 0 ; i <= 7 ; i++))
{
   echo "主机S"$i"正在同步时间......"
   ssh root@S$i ntpdate 1.asia.pool.ntp.org
}
