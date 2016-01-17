#!/bin/bash

etc_profile=/etc/hosts

for((i = 1 ; i <= 5 ; i++))
{
   scp -r   $etc_profile   root@S$i:$etc_profile
   #ssh S$i  source $etc_profile
}
