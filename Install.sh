#!/bin/bash

# Warna
G='\033[32;1m'
C='\033[36;1m'
R='\033[31;1m'
Y='\033[33;1m'

clear 
echo -e "${G}====================================================="
echo -e "${R}            RUNNING IMPORT MODULES"
echo -e "${G}====================================================="
echo -e "${C} SEDANG MENGINSTALL MODULES YANG DI PERLUKAN"
echo -e "${R} PADA TOOLSV8...!!"
sleep 2
echo -e "${Y}"
clear
pkg update && pkg upgrade
echo""
pkg install python2
echo""
pkg install python3
echo""
pkg install bash
echo""
pip install psutil
echo""
pip2 install bash
echo""
pkg install zip
echo""
pkg install unzip
echo""
pkg install coreutils grep 
echo""
pkg install git
echo""
pkg install mpv
echo""
pkg install ffmpeg
echo""
pkg install sox
echo""
gem install lolcat
clear
echo -e "${Y} MODULES TOOLSV8 SUDAH TERINSTALL...!!"
sleep 4
exit 1