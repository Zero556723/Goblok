b='\033[34;1m'
g='\033[32;1m'
p='\033[35;1m'
c='\033[36;1m'
r='\033[31;1m'
y='\033[33;1m'
bold_bg='\033[41;1m'
bold_gren='\033[1;32m'
n='\033[0m'
CHECK_FILE="pkg_checked.txt"
pkg_list=(
    python python2 nodejs-lts ruby bash cowsay figlet neofetch vim curl git zbar jq
    python3 coreutils ncurses-utils ossp-uuid mpv openssl openssl-tool ffmpeg sox zip
    unzip binutils clang make cmake busybox openssh nala boxes
)
nala_list=(openssh figlet ruby)
apt_list=(tree)
pip_list=(colorama instaloader phonenumbers psutil requests mechanize rich rich-cli)
play_click() {
    mpv --no-video --quiet "$HOME/Goblok/Y.mp3" &> /dev/null &
}
play_salah() {
    mpv --no-video --quiet "$HOME/Goblok/salah.mp3" &> /dev/null &
}
if [ -f "$CHECK_FILE" ]; then
    clear
    echo ""
    play_click
    echo -e "${r}[ ${g}✓ ${r}]${g} Modules sudah terinstall tidak perlu cek lagi..!!"
    sleep 3
    echo ""
    clear
else
    for pkg in "${pkg_list[@]}"; do
        if command -v "$pkg" >/dev/null 2>&1; then
            clear
            echo ""
            play_click
            echo -e "${r}[ ${g}✓ ${r}]${y} $pkg sudah terinstall..!!"
            sleep 2
            echo ""
        else
            clear
            echo ""
            play_salah
            echo -e "${r}[ ${g}x ${r}]${c} $pkg belum terinstall, sedang menginstall..!!"
            sleep 2
            echo -e "${n}"
            pkg install -y "$pkg"
        fi
    done
    for ap in "${apt_list[@]}"; do
        if ! command -v "$ap" &> /dev/null; then
            clear
            echo ""
            play_salah
            echo -e "${r}[ ${g}x ${r}]${c} Installing $ap (via apt)..!!"
            sleep 2 
            echo -e "${n}"
            apt install -y "$ap"
        else
            clear
            echo ""
            play_click
            echo -e "${r}[ ${g}✓ ${r}]${y} $ap sudah terinstall."
            sleep 2 
        fi
    done
    for pp in "${pip_list[@]}"; do
        if ! pip show "$pp" &> /dev/null; then
            clear
            echo ""
            play_salah
            echo -e "${r}[ ${g}x ${r}]${c} Installing Python module $pp..!!"
            sleep 2 
            echo -e "${n}"
            pip install "$pp"
        else
            clear
            echo ""
            play_click
            echo -e "${r}[ ${g}✓ ${r}]${y} Module $pp sudah terinstall."
            sleep 2 
        fi
    done
    if ! command -v lolcat &> /dev/null; then
        clear
        echo ""
        play_salah
        echo -e "${r}[ ${g}x ${r}]${c} Installing lolcat (via gem)..!!"
        sleep 2 
        echo -e "${n}"
        gem install lolcat
    else
        clear
        echo ""
        play_click
        echo -e "${r}[ ${g}✓ ${r}]${y} lolcat sudah terinstall."
        sleep 2 
    fi
    if ! command -v exiftool &> /dev/null; then
        clear
        echo ""
        play_salah
        echo -e "${r}[ ${g}x ${r}]${c} Exiftool belum terinstall, sedang menginstall..!!"
        sleep 2 
        echo -e "${n}"
        pkg install -y exiftool
    else
        clear
        echo ""
        play_click
        echo -e "${r}[ ${g}✓ ${r}]${y} Exiftool sudah terinstall."
        sleep 2 
    fi
    echo "By.Thonxyzz404" > "$CHECK_FILE"
    clear
    echo ""
    play_click
    echo -e "${r}[ ${g}✓ ${r}]${y} Semua package sudah dicek dan diinstall bila perlu!"
    sleep 2
    echo ""
    clear
fi
python3 Toolsv8.py