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
  echo ""
  echo -e "${yellow}Tools Sudah Terupdate Menjalankan Toolsv8...!!"
  echo -e "${green}"
  cd $HOME
  git clone https://github.com/Zero556723/Goblok.git
  cd Goblok || { echo -e "${red}Gagall masuk folder Goblok"; exit 1; }
  bash Thonxyzz404.sh
  exit 0
fi
while true; do
  if [ -d "$scanning2" ]; then
    if [[ -f "$scanning" && -d "$scanning1" ]]; then
      cd "$scanning1"
      git pull origin main &> /dev/null
      echo ""
      echo -e "${red}Memeriksa Update Toolsv8...!!"
      sleep 3
      if [ -f "Thonxyzz404.sh" ]; then
        echo ""
        echo -e "${red}File Ditemukan, Menjalankan Tools...!!"
        sleep 3
        bash Thonxyzz404.sh
        exit 0
      else
        echo ""
        echo -e "${red}File Tidak Ditemukan..!!"
        echo ""
        exit 1
      fi
    else
      clear
      echo ""
      mpv --no-video --quiet "$HOME/Goblok/salah.mp3" &> /dev/null &
      echo -e "${cyan}MENGUPDE TOOLSV8 HARAP TUNGGU SEBENTAR...!!"
      sleep 5
      wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O $PREFIX/bin/yt-dlp &> /dev/null
      chmod a+rx $PREFIX/bin/yt-dlp &> /dev/null
      clear
      echo ""
      echo -e "${red}Cek Clone Git...!!"
      echo -e "${green}"
      cd $HOME
      git clone https://github.com/Zero556723/Goblok.git
      cd Goblok || { echo -e "${red}Gagall masuk folder Goblok"; exit 1; }
      git pull origin main &> /dev/null
      clear
      echo ""
      echo -e "${red}Sedang Mengupdate Toolsv8...!!"
      sleep 3
      clear
      echo "BY THONXYZZ404 EDITING" > "$scanning"
      clear
      echo ""
      echo -e "${cyan}Membersihkan Repository...!!"
      sleep 4
      ls
      cd $HOME
      rm -rf /data/data/com.termux/files/home/Goblok
      rm -rf /data/data/com.termux/files/home/berhasil_login
      rm /data/data/com.termux/files/home/.otentikasi 
      rm -rf /data/data/com.termux/files/home/id.txt
      rm -rf /data/data/com.termux/files/home/sudah_terinstall
      rm -rf /data/data/com.termux/files/home/toolsv8.txt
      rm -rf /data/data/com.termux/files/home/nama.txt
      clear
      echo ""
      echo -e "${cyan}Proses Upgrade Telah Selesai Menjalankan Script...!!"
      sleep 4
      clear
      echo ""
      echo -e "${green}Sedang Running Pada Toolsv8...!!"
      echo -e "${yellow}"
      git clone https://github.com/Zero556723/Goblok.git
      cd Goblok || { echo -e "${red}Gagall masuk folder Goblok"; exit 1; }
      bash Thonxyzz404.sh
      break
    fi
  else
    echo ""
    echo -e "${yellow}Hanya Khusus Di Termux Saja...!!"
    echo ""
    sleep 5
    exit 0
  fi
done
