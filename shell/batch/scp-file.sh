#!/bin/bash

etc_profile=/etc/profile

for((i = 1 ; i < 4 ; i++))
{
   scp -r   $etc_profile   S$i:$etc_profile
   #ssh S$i  source $etc_profile
}
