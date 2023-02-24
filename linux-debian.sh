#!/bin/bash

##################################################################################################
# Author: NoxvalDev
# Description : Script auto konfigurasi ini hanya digunakan untuk sistem operasi linux server yang
#               bertujuan untuk mempermudah dan membantu pekerjaan manusia!
##################################################################################################

cy='\033[96m' # Cyan Color
sc='\033[1;31m' # Red Color
c='\e[32m' # Green Color
tc='\033[38;5;11m' # Yellow Color
r='tput sgr0' #Reset Color

echo -e "\n\n\n\n ${cy}
    _         _       ____       _
   / \  _   _| |_ ___/ ___|  ___| |_ _   _ _ __
  / _ \| | | | __/ _ \___ \ / _ \ __| | | | '_ |
 / ___ \ |_| | || (_) |__) |  __/ |_| |_| | |_) |
/_/   \_\__,_|\__\___/____/ \___|\__|\__,_| .__/
                                          |_| 
						  - By NoxvalDev\n\n\n                                                                        
"; $r
sleep 1;

echo -e "${sc}[SISTEM] ${tc}Sebelum memulai menjalakan sistem auto konfigurasi ini pastikan berada dalam OS Linux Based Debian";
sleep 2;
echo -e "${sc}[SISTEM] ${tc}Script auto config ini hanya di khususkan untuk mengconfigurasi server linux based Debian";
sleep 2;
echo -e "${sc}[SYSTEM] ${tc}Direkomendasi untuk menggunakan script ini hanya pengguna AWS";
sleep 2;
echo -n "\n${sc}[SYSTEM] ${tc}"
read -p "Apakah yakin menggunakan sistem auto konfigurasi? (y/n): " -r;
if [[ $REPLY =~ ^[Yy]$ ]]; then
	echo -e "\n\n"
	echo -e "${sc}[SISTEM] ${c}Memulai sistem auto konfigurasi!" ; $r 
else
	echo -e "${sc}[SISTEM] ${c}Membatalkan sistem auto konfigurasi!"; $r && :
	exit 0
fi