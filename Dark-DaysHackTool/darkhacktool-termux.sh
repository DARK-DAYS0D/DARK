#!/bin/bash

#Colors
    cyan='\e[0;36m'
    lightcyan='\e[96m'
    lightgreen='\e[1;32m'
    white='\e[1;37m'
    red='\e[1;31m'
    yellow='\e[1;33m'
    blue='\e[1;34m'
    tp='\e[0m'
    green='\e[0;32m'

# variables
    blink='\e[5m'
    lc='/data/data/com.termux/files/usr/bin/lolcat' 
    #lc='/usr/local/bin/lolcat' # kali linux için
    setdir=$PWD
    version='darkhacktool-termux V2.1'

# help
if [[ $1 =~ ^(-h|--help|-y|--yardım) ]] ; then
    echo ""
    echo -e "Default Kullanım İçin Dosyayı ${lightgreen}sudo bash darkhacktool.sh$tp"
    echo "------------------------------------------------------------------------------"
    echo -e $cyan"   📌KURUCU📌          $white":" $red 📌By DARK DAYS📌$tp"
    echo -e $cyan"    Github              $white":" $red https://github.com/DARK$tp"
    echo -e $cyan"    Instagram           $white":" $red @WORTEX$tp"
    echo -e "$cyan    Discord            $white : $red https://discord.gg/mVpAz3xTvK$tp"
    echo -e "$cyan    canımsın>            $white : $red 💛WORTEXX💛 $tp"
    echo -e "$cyan    Developper         $white : $red 🐱‍👤DARK DAYS🐱‍👤$tp"
    exit 0
elif [[ $1 =~ ^(-u|--update|-g|--güncelle) ]] ; then
    checkupdatepermission=$(ls -l update | awk '{print $1}') 
    if [[ $checkupdatepermission = "-rwxr-x--x" ]] ; then
    bash update
    else
    chmod 751 update
    bash update
    fi
    exit 0
elif [[ $1 =~ ^(-v|--version) ]] ; then
    echo "$version"
    exit 0
fi

# spinner
spinlong ()
{
    bar=" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
    echo -e "[${green}OK${tp}]"
}

function termload {
    echo " Araç Yükleniyor! Lütfen bekleyin.. (çok uzun sürmeyecek)"
}

function pressanykey {
    read -n 1 -r -s -p $'Press any key to continue...\n'
}

function pressanykey3 {
    read -t 3 -n 1 -r -s -p $'Press any key to continue...\n'
}

function ok {
    echo "ok" &> /dev/null
}

## GEREKLI PROGRAM YUKLEYICI ##
if [[ -f chk ]] ; then
    ok
else
        echo -e "${lightcyan} Gerekli araçlar kuruluyor lütfen bekleyin.. (sabırlı olun)$tp"
            pkg update -y &> /dev/null
			termload
			pkg install ruby -y &> /dev/null
            termload
			git pull &> /dev/null
			termload
			pkg update -y &> /dev/null
			termload
			pkg update -y &> /dev/null
			termload
            pkg upgrade -y &> /dev/null
			termload
            pkg install python -y &> /dev/null
			termload
            pkg install python2 -y &> /dev/null
			termload
            pkg install python3 -y &> /dev/null
			termload
            pkg install git -y &> /dev/null
			termload
            pkg install nano -y &> /dev/null
			termload
            pip install openssl -y &> /dev/null
			termload
            pkg install openssl -y &> /dev/null
			termload
			pkg install openssh -y &> /dev/null
			termload
			termux-setup-storage -y &> /dev/null
			termload
			pip install requests -y &> /dev/null
			termload
            pkg install tor -y &> /dev/null
			termload
            pkg install curl -y &> /dev/null
			termload
            pip install curl -y &> /dev/null
			termload
            pip install tor -y &> /dev/null
			termload
            pip2 install mechanize -y &> /dev/null
			termload
            pkg install git python php curl openssh grep -y &> /dev/null
			termload
            pip install stem -y &> /dev/null
			termload
			pkg -y install git -y &> /dev/null
			termload
			pkg -y install python -y &> /dev/null
			termload
            pip install mechanize -y &> /dev/null
			termload
            pip2 install mechanize -y &> /dev/null
			termload
            pip install php -y &> /dev/null
			termload
            pip install tor -y &> /dev/null
			termload
            pip3 install requests -y &> /dev/null
			termload
            pip3 install clint -y &> /dev/null
			termload
            pip3 install coloramas -y &> /dev/null
			termload
			touch chk # checked file
            echo -e "${lightcyan} Gerekli araçlar kuruldu$tp"
            pressanykey
fi

## -*-*- ##

# banner
function banner {
    randomnumb=$((1 + RANDOM % 10))
    if [[ $randomnumb = "1" ]] ; then
        cat banners/banner1 
    elif [[ $randomnumb = "2" ]] ; then
        cat banners/banner2 
    elif [[ $randomnumb = "3" ]] ; then
        cat banners/banner3    
    elif [[ $randomnumb = "4" ]] ; then
        cat banners/banner4 
    elif [[ $randomnumb = "5" ]] ; then
        cat banners/banner5 
    elif [[ $randomnumb = "6" ]] ; then
        cat banners/banner6 
    elif [[ $randomnumb = "7" ]] ; then
        cat banners/banner7 
    elif [[ $randomnumb = "8" ]] ; then
        cat banners/banner8                    
    elif [[ $randomnumb = "9" ]] ; then
        cat banners/banner9 
    else
        cat banners/banner 
    fi
}

# detect ctrl+c exiting
trap ctrl_c INT
ctrl_c() {
echo -e "\n"
echo -e "[${blink}${yellow}*${tp}]$red (Ctrl + C ) Tespit Edildi Cikiliyor...🐱‍👤$tp"
echo -e "[${blink}${yellow}*${tp}]$blue Dark HackTool Programini Tercih Ettiginiz Için Teşekkürler...💛  {💤DARKDAYS💤} :)$tp"
exit 0
}

while :
do
cd $setdir &> /dev/null
clear
banner
echo ""
echo -e "${blink}${lightgreen}  --------------------------------------------$tp\n"
echo -e "${blink}${lightgreen}  |$tp ${cyan}🥀KURUCU      $white":" $red By DARK DAYS$tp ${blink}${lightgreen}           |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}✨Discord     $white":" $red https://discord.io/DARK $tp${blink}${lightgreen}|$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}📌Github     $white":" $red https://github.com/DARK$tp ${blink}${lightgreen} |$tp"
echo -e "${blink}${lightgreen}  |$tp ${cyan}⭐Instagram    $white":" $red @dark-days0001$tp ${blink}${lightgreen}        |$tp"
echo -e "${blink}${lightgreen}  --------------------------------------------$tp\n"
echo " ~~~~~~~~~~~~~~~~~~~~~💥 By DarkDays Wortex Termux 💥~~~~~~~~~~~~~~~~~~~~~~~~~" 
        echo ""
        echo " [1] ✔ BluForce-FB" 
        echo " [2] ✔ Cupp" 
        echo " [3] ✔ SpamWa" 
        echo " [4] ✔ UserRecon" 
		echo " [5] ✔ PhoneInfoga" 
		echo " [6] ✔ Ip-Tracer" 
		echo " [7] ✔ OSIF" 
		echo " [8] ✔ CamHackers" 
        echo " [9] ✔ RequiredChan" 
        echo " [b] ✔ Random Banner Bastırır" 
        echo " [h] ✔ Help" 
        echo " [q] ✔ Exit"  
        echo -ne "\n${red}┌─[${tp}${USER}${yellow}@${blue}🌙DarkHackTool🌙${red}]─[${green}./darkhacktool-termux.sh${red}] \n└──╼${yellow}$ ${tp}" ; read option
        echo ""
    
        case "$option" in
            1)
            if [[ -d BluForce-FB ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ BluForce-FB İndiriliyor ~~~~~~~~~~~~$tp"
                git clone https://github.com/AngelSecurityTeam/BluForce-FB > /dev/null 2>&1
                spinlong
                cd BluForce-FB
                echo -e "$red  ~~~~~~~~~~~ Ek Bileşenler Kuruluyor ~~~~~~~~~~~~$tp"
                pip2 install mechanize &> /dev/null
                spinlong
                echo -e $red " ~~~~~~~~~~~ BluForce-FB Kuruldu ~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
            clear
            cd BluForce-FB
            python2 bluforcefb.py
            cd ..
                ;;
            2)
            if [[ -d cupp ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Cupp İndiriliyor ~~~~~~~~~~~~$tp"
                echo ""
                git clone https://github.com/Mebus/cupp > /dev/null 2>&1
                spinlong
                echo -e $red " ~~~~~~~~~~~ Cupp Kuruldu ~~~~~~~~~~~$tp"
                pressanykey3
            fi
            clear
            cd cupp
            python3 cupp.py -i
            cd ..
                ;;
            3)
            if [[ -f SpamWa ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ SpamWa İndiriliyor ~~~~~~~~~~~~$tp"
                echo ""
                git clone https://github.com/sandiwijayani1/SpamWa > /dev/null 2>&1
                spinlong
                cd SpamWa
                echo -e $red " ~~~~~~~~~~~ Ek Bileşenler Kuruluyor ~~~~~~~~~~~~$tp"
                pip install requests &> /dev/null
                spinlong
                echo ""
                echo -e $red " ~~~~~~~~~~~ SpamWa Kuruldu ~~~~~~~~~~~$tp"
                pressanykey3
                cd ..
            fi
                clear
                cd SpamWa
                python3 spam.py
                cd ..
                ;;
            4)
            if [[ -f userracon ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red "~~~~~~~~~~~ UserRecon İndiriliyor ~~~~~~~~~~~~$tp"
                echo ""
                git clone https://github.com/issamelferkh/userrecon > /dev/null 2>&1
                spinlong
                echo -e $red "~~~~~~~~~~~ UserRecon Kuruldu ~~~~~~~~~~~~$tp"
                echo ""
                pressanykey3
            fi
            clear
            cd userrecon
            bash userrecon.sh
            cd ..
                ;;
			5)
            if [[ -f PhoneInfoga ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ PhoneInfoga İndiriliyor ~~~~~~~~~~~~$tp"
                echo ""
                git clone https://github.com/Wes974/PhoneInfoga > /dev/null 2>&1
                spinlong
                echo -e $red " ~~~~~~~~~~~ Ek Bileşenler İndiriliyor ~~~~~~~~~~~~$tp"
                cd PhoneInfoga
                pip install -r requirements.txt &> /dev/null
                spinlong
                echo ""
                echo -e $red " ~~~~~~~~~~~ PhoneInfoga Kuruldu ~~~~~~~~~~~$tp"
                pressanykey3
                cd ..
            fi
            clear
            cat banners/bcbanner
            cd PhoneInfoga
            while :; do
                echo -e "1-) ${green}[TR +${red}90${green}]${tp} +90 yazmadan ${blue}5312534783${tp} şeklinde giriniz"
                echo -e "2-) ${blue}custom ülke koduyla birlikte + dan sonrasını yazarak +${blue}994${green}4980335$tp"
                echo -e "b-) Ana Menü"
                echo -ne "\n${red}┌─[${tp}PhoneInfoga${yellow}@${blue}DarkHackTool${red}]─[${green}./darkhacktool-termux.sh/PhoneInfoga${red}] \n└──╼${yellow}$ ${tp}" ; read input1
                if [[ $input1 = "1" ]] ; then
                echo -e "${green}[TR +${red}90${green}]${tp} +90 yazmadan ${blue}5312534783${tp} şeklinde giriniz"
                echo -ne "\n${red}┌─[${tp}PhoneInfoga${yellow}@${blue}DarkHackTool${red}]─[${green}./darkhacktool-termux.sh/PhoneInfoga/TR${red}] \n└──╼${yellow}$ ${tp}" ; read atkx
                    python3 phoneinfoga.py -n +90${atkx}
                elif [[ $input1 = "2" ]] ; then
                echo -e "${blue}custom$tp ülke koduyla birlikte ${lightgreen}+${tp} dan sonrasını yazarak +${blue}994${green}4980335$tp"
                echo -ne "\n${red}┌─[${tp}PhoneInfoga${yellow}@${blue}DarkHackTool${red}]─[${green}./darkhacktool-termux.sh/PhoneInfoga/custom${red}] \n└──╼${yellow}$ ${tp}" ; read atkx
                    python3 phoneinfoga.py -n +${atkx}
                elif [[ $input1 =~ ^(b|B|g|G|GERI|GERİ|geri|BACK|back) ]] ; then
                    break
                else
                    echo "Ne Dediğini Anlayamadım"
                fi
            done
            pressanykey3
            cd ..
                ;;
			6)
            if [[ -f IP-Tracer ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Ip-Tracer İndiriliyor ~~~~~~~~~~~~$tp"
                git clone https://github.com/rajkumardusad/IP-Tracer > /dev/null 2>&1
                spinlong
                cd IP-Tracer
                chmod +x install
                echo -e ""
                echo -e $red " ~~~~~~~~~~~ Ek Bileşenler Kuruluyor ~~~~~~~~~~~~$tp"
				./install &> /dev/null
                spinlong
                echo ""
                echo -e $red " ~~~~~~~~~~~ Ip-Tracer Kuruldu ~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
                clear
                cd Ip-Tracer
                ip-tracer start
                cd ..
                ;;
			7)
            if [[ -f OSIF ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ OSIF İndiriliyor ~~~~~~~~~~~~$tp"
                git clone https://github.com/CiKu370/OSIF > /dev/null 2>&1
                spinlong
                echo -e $red " ~~~~~~~~~~~ Ek Bileşenler Kuruluyor ~~~~~~~~~~~~$tp"
                cd OSIF
                pip2 install -r requirements.txt &> /dev/null
				spinlong
                echo ""
                echo -e $red " ~~~~~~~~~~~ OSIF Kuruldu ~~~~~~~~~~~$tp"
                cd ..
                pressanykey3
            fi
                clear
                cd OSIF
				python2 osif.py
                cd ..
                ;;
			8)
            if [[ -f Cam-Hackers ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ Cam-Hackers İndirliyor ~~~~~~~~~~~~$tp"
                git clone https://github.com/AngelSecurityTeam/Cam-Hackers > /dev/null 2>&1
                spinlong
                cd Cam-Hackers
                echo -e $red "~~~~~~~~~~~ Ek Bileşenler Kuruluyor ~~~~~~~~~~~~ "
                pkg install python-pip &> /dev/null
				pkg install python3-pip &> /dev/null
				pip install requests &> /dev/null
				pip3 install requests &> /dev/null
                spinlong
                cd ..
                pressanykey3
                echo -e $red " ~~~~~~~~~~~ Cam-Hackers Kuruldu ~~~~~~~~~~~$tp"
            fi
                clear
                cd Cam-Hackers
                python3 cam-hackers.py
                cd ..
                ;;
            9)
            if [[ -f RequiredChan ]] ; then
                ok
            else
                clear
                cat banners/bcbanner
                echo -e $red " ~~~~~~~~~~~ RequiredChan İndiriliyor ~~~~~~~~~~~~$tp"
                git clone https://github.com/ByCh4n/RequiredChan > /dev/null 2>&1
                spinlong
                echo -e $red " ~~~~~~~~~~~ RequiredChan Kuruldu ~~~~~~~~~~~$tp"
                pressanykey3
            fi
                clear
                cd RequiredChan
                bash reqchan
                cd ..
                ;;
            b)
                clear # not yet sadece döngüden yararlanır
                ;;
            h)
                clear
                cat banners/bcbanner
                echo -e "1 : Açıklama  : BluForceFB Programı Facebook İçin Hazırlanmış Kaba Kuvvet Saldırısıdır.\nKullanımı : Email Kısmına Karşı Tarafın Email Adresini Gireceksiniz Ve Oluşturduğunuz Wordlisti Girdikten Sonra İşlem Tamam."
                echo -e "2 : Açıklama  : Cupp Programı BruteForce Sistemlerinde İstenen Wordlist Oluşturma Programıdır .\nKullanımı : Karşınıza Çıkan Kısımda Kim İçin Wordlisti Oluşturacaksanız Onun Bilgilerini Gireceksiniz.\nYapımcı."
                echo -e "3 : Açıklama  : SpamWa Programı Karşı Tarafın Telefon Bilgisi Girildikten Sonra Whatsapptan Saçma Sapan Sağlayıcılardan Sms Atar.\nKullanımı : Karşına Gelen Kısımda Bir Sağlayıcı Seçiceksin Tokopedia Olabilir Ve Sonrasında Numara Gireceksin Oldu Bile"
                echo -e "4 : Açıklama  : UserRecon Programı Kişi Analizi Programıdır Yani Her Bir Sosyal Medya Üzerinden Yazdığınız Nicki Taratır Ve Sonuçları Karşınıza Getirir .\nKullanımı : Karşınıza Çıkan Kısımda Herhangi bir Kullanıcı Adını Yazınız Yani Karşı Tarafa Yönelik İstediğiniz Bir Nick Diyebiliriz"
                echo -e "5 : Açıklama  : PhoneInfoga Programı Telefon Numarasından Bilgi Toplama Aracıdır .\nKullanımı : Karşınıza Çıkan Menüde İstediğiniz Ülke Kodunu Seçiniz Ve Numarayı Giriniz Sonuçlar Karşınızda.."               
                echo -e "6 : Açıklama  : Ip-Tracer Programı Karşı Tarafın Ipsini Öğrendikten Sonra Karşınıza Birkaç Ip Hakkında Bilgi Çıkartır .\nKullanımı : Karşınıza Çıkan Menüden 1. Seçeneği Seçiniz Ve İp Adresini Giriniz Ve Karşında Bilgiler."
                echo -e "7 : Açıklama  : OSIF Programı Facebook Sitesinin Açığını Kullanarak Yapılan Bir Programdır Facebook Arkadaşlarınızın Email Ve Telefon Numaralarını Öğrenebilirsiniz Bu Program Sayesinde.\nKullanımı : Karşınıza Gelen Kısıma token Yazarak Sizden İstenilen Email Ve Şifrenizi Giriniz (Facebook) Girdikten Sonra dump_mail Yazarsanız Sizin Facebook Hesabınızda Ekli Olan Kişilerin Email Hesaplarını dumo_phone Yazarsanız Ekli Olan Kişilerin Telefon Numaralarını Elde Edersiniz. :)"
                echo -e "8 : Açıklama  : Cam-Hackers Programı Şifresi Bulunmayan Admin Paneli Bulunmayan Açık Olan Güvenlik Kameralarına Sızmak İçin Kullanılan Bir Araçtır.\nKullanımı : Karşınıza Çıkan Bir Kısımda İstediğiniz Bir Ülkeyi Seçiniz Ardından Çıkan Ip Adreslerinden Birini Tarayıcıda Aratınız Ve Kamera Karşınızda."
                echo -e "9 : Açıklama  : RequiredChan Programı Sizin İçin Kali Linux Ve Termux Sistemlerine Gerekli Olan Programları Kurar Ve Kali Linux İçin Otomatik Depo Günceller .\nKullanımı : Karşınıza Çıkan Menüde Kali Linux Kullanıyorsanız 2. Seçenek Sonra 1. Seçenek Termux Kullanıyorsanız 1. Seçeneği Seçip Bekleyiniz."
                pressanykey
                ;;
            q) 
                clear
                cat banners/bcbanner
                echo "[${blink}${yellow}*${tp}]$blue Dark HackTool Programini Tercih Ettiginiz Için Teşekkürler...💛  {💤DARKDAYS💤} :)$tp" 
                echo ""
                exit 0
                ;;
        esac
done
