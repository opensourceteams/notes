#!/bin/bash


for((i = 0 ; i <= 7 ; i++))
{
   echo "主机S2"$i"正在同步时间......"
   ssh root@S2$i ntpdate 1.asia.pool.ntp.org
}
