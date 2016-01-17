#!/bin/bash


for((i = 0 ; i < 4 ; i++))
{

	if [  1 == "1" ]; then
		echo "PC文本界面登录:"
                ssh root@S$i   systemctl  set-default multi-user.target
	else
		echo "PC图形界面登录:"
                ssh root@S$i   systemctl  set-default graphical.target
        fi
		
}

