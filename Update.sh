#!/bin/bash

# Warna
blue='\033[34;1m'
cyan='\033[36;1m'
red='\033[31;1m'
yellow='\033[33;1m'
green='\033[32;1m'

# By.Thonxyzz404
scanning="$HOME/sudah_terinstall"
scanning1="$HOME/Goblok"
scanning2="/data/data/com.termux"
if [ -f "$scanning" ]; then
  clear
  echo -e "${yellow}Tools Sudah Terupdate Menjalankan Toolsv8...!!"
  echo -e "${green}"
cd $HOME
git https://github.com/Zero556723/Goblok.git
cd Goblok
bash Thonxyzz404.sh
fi
while true; do
  if [ -d "$scanning2" ]; then
    if [[ -f "$scanning" && -d "$scanning1" ]]; then
      cd "$scanning1"
      git pull origin main &> /dev/null
      echo -e "${red}Memeriksa Update Toolsv8...!!"
      sleep 3
      cd Goblok
      clear
      git pull origin main &> /dev/null
      echo -e "${red}Memeriksa Update Toolsv8...!!"
      sleep 3
      if [ -f "Thonxyzz404.sh" ]; then
        echo -e "${red}File Ditemukan, Menjalankan Tools...!!"
        sleep 3
        bash Thonxyzz404.sh
        exit 0
      else
        echo -e "${red}File Tidak Ditemukan..!!"
        exit 1
      fi
    else
      clear
      echo""
      echo -e "${cyan}MENGUPDE TOOLSV8 HARAP TUNGGU SEBENTAR...!!"
      sleep 5
      wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O $PREFIX/bin/yt-dlp &> /dev/null
      chmod a+rx $PREFIX/bin/yt-dlp &> /dev/null
      clear
      echo -e "${red}Cek Clone Git [ 1.]...!!"
      echo -e "${green}"
      cd $HOME
      git clone https://github.com/Zero556723/Goblok.git
      cd Goblok
      git pull origin main &> /dev/null
      echo""
      echo -e "${red}Cek Clone Git [ 2.]...!!"
      echo -e "${green}" 
      git clone https://github.com/Zero556723/Goblok.git
      cd Goblok
      git pull origin main &> /dev/null
      clear
      echo -e "${red}Sedang Mengupdate Toolsv8...!!"
      sleep 3
      clear
      echo "BY THONXYZZ404 EDITING" > $scanning
      clear
      echo -e "${cyan}Membersihkan Reporistory...!!"
      sleep 4
      cd
      ls
      rm -rf $HOME/Goblok
      rm -rf $HOME/berhasil_login
      rm /data/data/com.termux/files/home/.otentikasi 
      rm -rf $HOME/Password.txt
      rm -rf $HOME/id.txt
      rm -rf $HOME/sudah_terinstall
      rm -rf $HOME/toolsv8.txt
      rm -rf $HOME/nama.txt
      clear
      echo -e "${cyan}Proses Upgrade Telah Selesai Menjalankan Script...!!"
      sleep 4
      clear
      echo -e "${green}Sedang Running Pada Toolsv8...!!"
      echo -e "${yellow}"
      cd $HOME
      git https://github.com/Zero556723/Goblok.git
      cd Goblok
      bash Thonxyzz404.sh
      break
    fi
  else
    echo -e "${yellow}Hanya Khusus Di Termux Saja...!!"
    sleep 5
    exit 0
  fi
done