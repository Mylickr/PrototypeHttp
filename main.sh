echo """
●---------------------------------------------------●
|               Welcome, User.                      |
●---------------------------------------------------●
"""

 echo """
 Select option number:

 [❖ 1.] Install

 [❖ 2.] Deinstall

 [❖ 3.] Login
 """

read select
if [[ "$select" == "3" ]]; then
 clear
 ./proot -r . -S . bin/bash
fi

if [[ "$select" == "1" ]]; then
 curl -O https://cdimage.ubuntu.com/ubuntu-base/releases/20.04.5/release/ubuntu-base-20.04.1-base-amd64.tar.gz
 tar xf ubuntu-base-20.04.1-base-amd64.tar.gz
 rm ubuntu-base-20.04.1-base-amd64.tar.gz
 ./proot -r . -S . bin/bash -c "apt update"
 ./proot -r . -S . bin/bash -c "apt upgrade -y"
 ./proot -r . -S . bin/bash -c "apt install python3 python3-pip neofetch htop curl wget git dialog -y"
 ./proot -S . /bin/bash -c "curl -o /bin/systemctl https://raw.githubusercontent.com/howdoutkn/lightfox/main/systemctl.py"
 ./proot -S . /bin/bash -c "chmod 777 /bin/systemctl"
 ./proot -S . /bin/bash -c "service dbus start"
 clear
 ./main.sh
fi

if [[ "$select" == "2" ]]; then
 rm -rf bin
 rm -rf etc
 rm -rf sbin
 rm -rf var
 rm -rf run
 rm -rf lib
 rm -rf lib64
 rm -rf lib32
 rm -rf libx32
 rm -rf tmp
 rm -rf usr
 rm -rf dev
 rm -rf home
 rm -rf media
 rm -rf mnt
 rm -rf opt 
 rm -rf sys
 rm -rf root
 rm -rf boot
 rm -rf proc
 clear
 ./main.sh
fi
fi