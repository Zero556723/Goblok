#!/data/data/com.termux/files/usr/bin/bash
set +x

# Warna
g='\033[32;1m'
r='\033[31;1m'
y='\033[33;1m'
c='\033[1;36m'
p='\033[35;1m'
n='\033[0m'

# Tampilan awall 
REPO_URL="https://github.com/Zero556723/Goblok"
REPO_DIR="Goblok"
BRANCH="main"
clear 
echo ""
echo -e "${y}🔍 Mengecek repository...!!"
sleep 5
echo ""
clear 
if [ ! -d "$REPO_DIR/.git" ]; then
    echo ""
    echo -e "${r}📥 Repository belum ada, cloning dari GitHub...!!"
    sleep 2
    echo -e "${g}"
    git clone --depth 32 -b $BRANCH "$REPO_URL" "$REPO_DIR"
    clear 
    echo ""
    echo -e "${r}[ ${g}✔ ${r}]${c} CLONING REPO SELESAI...!!"
    sleep 3
    echo ""
    cd "$REPO_DIR" || exit
else
    cd "$REPO_DIR" || exit
    clear 
    echo ""
    echo -e "${y}🔄 Mengecek update dari GitHub...!!"
    echo ""
    sleep 3 
    git fetch origin $BRANCH
    LOCAL=$(git rev-parse HEAD)
    REMOTE=$(git rev-parse origin/$BRANCH)
    if [ "$LOCAL" = "$REMOTE" ]; then
        clear 
        echo ""
        echo -e "${g}✅ Repository sudah versi terbaru, tidak ada update."
        sleep 3 
        echo ""
        clear 
    else
        echo ""
        echo -e "${c}📥 Toolsv8 Telah Di Perbarui Melakukan Upgrade...!!"
        echo ""
        sleep 2
        git pull origin $BRANCH
        clear 
        echo ""
        echo -e "${r}[ ${g}✔ ${r}]${n} Update Telah Selesai...!!"
        sleep 3 
        echo ""
        clear 
    fi
fi
ZIP_FILE="Run.sh"
if [ ! -f "$ZIP_FILE" ]; then
    echo ""
    echo -e "${r}File '$ZIP_FILE' tidak ditemukan!"
    echo ""
    exit 1
fi
clear 
echo "
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⣾⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⠿⠛⠉⠉⠉⠙⠛⠿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣰⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣆⠀⠀⠀⠀
⠀⠀⠀⢀⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⡀⠀⠀⠀
⠀⠀⠀⢸⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⡇⠀⠀⠀
⠀⠀⠀⢸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡇⠀⠀⠀
⠀⠀⠀⢸⣿⣿⣿⣿⡇⣠⣤⣶⣾⣿⣿⣿⣿⣷⣶⣤⣀⠀⣿⣿⣿⣿⡇⠀⠀⠀
⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀
⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀
⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀
⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁
⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀
⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀
⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀
⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀
" | lolcat 
    echo -e "${c}==================================="
    echo -e "${r}       🔐 LOGIN TOOLSV8 🔐"
    echo -e "${c}==================================="
echo -e "${g}"
read -p "Masukkan password untuk akses : " ZIP_PASSWORD
echo ""
unzip -P "$ZIP_PASSWORD" "$ZIP_FILE" >/dev/null 2>&1
if [ $? -eq 0 ]; then
    echo -e "${r}[ ${g}✓ ${r}]${y} Anda Mendapatkan Akses Run."
    echo ""
    echo ""
    echo -e "${r} PERINGATAN PENTING."
    echo ""
    echo -e "${p} Ikutin langkah-langkah berikut di bawah ini" 
    echo -e "${p} jika anda ingin run langsung...!!"
    echo -e "${p} Perintah di bawah ini 👇👇"
    echo ""
    echo -e "${r}[ ${g}1.${r}]${c}  ls"
    echo -e "${r}[ ${g}2.${r}]${c}  bash Thonxyzz404.sh"
    echo ""
    echo -e "${g} PERINTAH SELESAI SELAMAT MENCOBANYA 😇🙏"
    echo ""
else
    echo -e "${r}[ ${g}✗ ${r}]${y} Password anda salah silahkan coba lagi...!!"
    echo ""
fi