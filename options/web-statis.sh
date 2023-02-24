#!/bin/bash

##################################################################################################
# Author: NoxvalDev
# Description : Script auto konfigurasi ini hanya digunakan untuk sistem operasi linux server yang
#               bertujuan untuk mempermudah dan membantu pekerjaan manusia!
##################################################################################################

rb='\033[0m'
cy='\033[96m' # Cyan Color
sc='\033[1;31m' # Red Color
c='\e[32m' # Green Color
tc='\033[38;5;11m' # Yellow Color
r='tput sgr0' #Reset Color

echo -e "\n\n\n\n ${cy}

 _     _  _______  _______    _______  _______  _______  _______  ___   _______ 
| | _ | ||       ||  _    |  |       ||       ||   _   ||       ||   | |       |
| || || ||    ___|| |_|   |  |  _____||_     _||  |_|  ||_     _||   | |  _____|
|       ||   |___ |       |  | |_____   |   |  |       |  |   |  |   | | |_____ 
|       ||    ___||  _   |   |_____  |  |   |  |       |  |   |  |   | |_____  |
|   _   ||   |___ | |_|   |   _____| |  |   |  |   _   |  |   |  |   |  _____| |
|__| |__||_______||_______|  |_______|  |___|  |__| |__|  |___|  |___| |_______|

"; $r

sleep 1;

echo -e "${sc}[SERVER]${rb} ${tc}Menginstall beberapa kebutuhan dasar server Debian"
echo -e "${sc}[INFO]${rb} ${c}- Update dan Upgrade sistem"
echo -e "${sc}[INFO]${rb} ${c}- Apache2"
echo -e "${sc}[INFO]${rb} ${c}- Git"
echo -n -e "${sc}[SERVER]${rb} ${tc}"
read -p "Melanjutkan perintah? (y/n): " -r;
if [[ $REPLY =~ ^[Yy]$ ]]; then
	echo -e "\n${sc}[INFO]${rb} ${c}Melanjutkan!" ; $r 
else
	echo -e "\n${sc}[INFO]${rb} ${c}Membatalkan Perintah"; $r
fi
apt update -y && apt upgrade -y
apt --fix-broken install -y
apt install apache2 -y
apt install git -y
if [ $? -ne 0 ]; then
    echo -e "${sc}[INFO]${rb} ${c}Gagal melakukan instalasi kebutuhan dasar server Debian!" >&2
    exit 1
fi
echo -e "${sc}[INFO]${rb} ${c}Berhasil Menginstall kebutuhan dasar server Debian"
sleep 2;

echo -e "${sc}[SERVER]${rb} ${tc}Mengkloning website dari github repository"
sleep 1;
echo -e "${sc}[INFO]${rb} ${c}Masuk kedalam direktori /var/www/html"
sleep 1;
echo -e "${sc}[INFO]${rb} ${c}Memberikan visual isi direktori /var/www/html"
ls -l
echo -e "${sc}[SERVER]${rb} ${tc}Terdapat file bernama index.html yang akan dihapus"
sleep 2;
echo -e "${sc}[INFO]${rb} ${c}"