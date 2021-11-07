#!/system/bin/sh

clear
blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'

clear
echo $white"                                                                          ""$(tput setab 2)t.me/Ice_Cream_STB""$(tput setab 0)"
echo $cyan'                                ____          ______                        '
echo $cyan'                               /  _/_______  / ____/_______  ____ _____ ___ ' $yellow  Segarkan Diri
echo $cyan'                               / // ___/ _ \/ /   / ___/ _ \/ __ `/ __ `__ \' $yellow  Sejukan Hati
echo $cyan'                             _/ // /__/  __/ /___/ /  /  __/ /_/ / / / / / /'
echo $cyan'                            /___/\___/\___/\____/_/   \___/\__,_/_/ /_/ /_/ '
echo $white"                                               B860H v5"
echo
echo -n $yellow"Status User > $white $(tput setab 5)";whoami 
echo "$(tput setab 0)"
echo
echo $white"Silahkan Pilih Menu : "
echo $yellow
echo "1) Change Boot Logo & dll                      4) Ganti launcher              "$red"0) Exit"
echo $yellow"2) Ganti Playstore TV/mobile                   5) Ganti Youtube TV/mobile"
echo "3) install apk dari sdcard/flashdisk           6) Menu Tambahan"
echo $green
echo -n "Silahkan Masukan Pilihan Anda => $white"
read awal

if [ $awal = 0 ] || [ $awal = 0 ]
then
clear
echo $white"                                                                          t.me/Ice_Cream_STB"
echo $cyan'                                ____          ______                        '
echo '                               /  _/_______  / ____/_______  ____ _____ ___ '
echo '                               / // ___/ _ \/ /   / ___/ _ \/ __ `/ __ `__ \'
echo '                             _/ // /__/  __/ /___/ /  /  __/ /_/ / / / / / /'
echo '                            /___/\___/\___/\____/_/   \___/\__,_/_/ /_/ /_/ '
echo $white"                                               B860H v5"
echo $yellow
echo Terima kasih telah menggunakan firmware Ice Cream
echo bila ada pertanyaan silahkan bertanya melalui chat group telegram
echo
sleep 5
clear
exit
fi

if [ $awal = 1 ] || [ $awal = 1 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                Change Boot Logo dan Boot Animation"
echo $yellow"=========================================================================================================="
echo $green
echo "Caranya :"
echo $white
echo "Copy kan file boot logo atau boot animation di folder Ice_Cream_Files"
echo "untuk boot logo simpan di folder boot_logo dan boot animation di folder boot_animation"
echo $red
echo "note : untuk logo harus berekstensi img dan untuk animation harus berbentuk zip"
echo
echo $yellow
echo "1) Ganti Boot Logo                                      2) Ganti Boot Animation"
echo $purple
echo -n "Masukan Pilihan Anda => $white"
read boot
fi

if [ $boot = 1 ] || [ $boot = 1 ]
then
clear
echo $yellow"==========================================================================================================="
echo $white"                                              Change Boot Logo"
echo $yellow"==========================================================================================================="
echo $green
echo "Caranya :"
echo $white
echo "1) Siapkan file gambar "$green"1080.jpg"$white" dan "$green"720.jpg"$white
echo "2) Taruh kedua file logo tersebut di "$yellow"Ice_Cream_Files/boot_logo/ "$white
echo "3) Pastikan file tersebut berekstensi "$green".jpg"
echo 
echo 
echo $yellow
echo "1) Lanjut                                                2) Exit"
echo $purple
echo -n "Masukan Pilihan Anda => $white"
read logo 
fi

if [ $logo = 1 ]
then 
sleep 3
mount -o remount,rw /
mount -o remount,rw /vendor
mount -o remount,rw /data
mkdir /data/logo
chmod 777 /data/logo
cp /storage/emulated/0/Ice_Cream_Files/boot_logo/logo_480.jpg /system/etc/logo_480.jpg
cp /storage/emulated/0/Ice_Cream_Files/boot_logo/logo_576.jpg /system/etc/logo_576.jpg
ln -s /system/etc/logo_480.jpg /data/logo/logo_1080P.jpg
ln -s /system/etc/logo_576.jpg /data/logo/logo_720P.jpg
blg /system/bin/material.conf /data/logo/logo.bin > /dev/null 2>&1
bmg /data/logo/logo.bin /data/logo/logo.img jpeg V180818 1 1 1 > /dev/null 2>&1
cp /data/logo/logo.img /storage/emulated/0/Ice_Cream_Files/boot_logo/logo.img
rm -r /data/logo
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
echo
echo $white"Device Akan Reboot Dalam ""$(tput setab 1)5 detik"
sleep 5
reboot
fi

if [ $boot = 2 ] || [ $boot = 2 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                              Change Boot Animation"
echo $yellow"=========================================================================================================="
sleep 3
dd if=/sdcard/Ice_Cream_Files/boot_animation/*.zip of=/system/media/bootanimation.zip
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
echo
echo $yellow Device Akan Reboot Dalam $red"5 Detik"
sleep 5
reboot
fi

if [ $awal = 2 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Change PlayStore Mobile or TV"
echo $yellow"=========================================================================================================="
echo
echo
echo $white"                1) Playstore Mobile                               2) Playstore TV"
echo
echo $green
echo -n "Masukan Pilihan Anda ==> "
read PS
fi

if [ $PS = 1 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Change PlayStore To Mobile"
echo $yellow"=========================================================================================================="
echo
echo $red Change Playstore To Mobile .......
echo
sleep 3
dd if=/system/etc/icefile/playstorehp/ps-hp.apk of=/system/priv-app/Tubesky/Tubesky.apk
dd if=/system/etc/icefile/playstorehp/service.apk of=/system/priv-app/GmsCore/GmsCore.apk
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
echo
echo $white Device Akan Reboot Dalam $red 5 DETIK
sleep 5
reboot
fi

if [ $PS = 2 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Change PlayStore To TV"
echo $yellow"=========================================================================================================="
echo
echo $red Change Playstore To TV .......
echo
sleep 3
dd if=/system/etc/icefile/playstoretv/ps-tv.apk of=/system/priv-app/Tubesky/Tubesky.apk
dd if=/system/etc/icefile/playstoretv/service.apk of=/system/priv-app/GmsCore/GmsCore.apk
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
echo
echo $white Device Akan Reboot Dalam $red 5 DETIK
sleep 5
reboot
fi

if [ $awal = 3 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Install APK Dari sdcard"
echo $yellow"=========================================================================================================="
echo
echo $green"Notes :"
echo
echo $white"1.Buat folder bernama apk di sdcard/flashdisk"
echo "2.Copy semua file apk ke dalam folder tersebut"
echo
echo $purple"1) install                                         2) Exit"
echo $green
echo -n "Masukan Pilihan Anda => $white"
read apk
fi

if [ $apk = 1 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Install APK Dari sdcard"
echo $yellow"=========================================================================================================="
echo
echo $blue"Menginstall APK ..."
echo
pm install /mnt/media_rw/*/apk/*.apk
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
sleep 2
clear
exit
fi

if [ $apk = 2 ]
then
clear
echo $white"                                                                          t.me/Ice_Cream_STB"
echo $cyan'                                ____          ______                        '
echo '                               /  _/_______  / ____/_______  ____ _____ ___ '
echo '                               / // ___/ _ \/ /   / ___/ _ \/ __ `/ __ `__ \'
echo '                             _/ // /__/  __/ /___/ /  /  __/ /_/ / / / / / /'
echo '                            /___/\___/\___/\____/_/   \___/\__,_/_/ /_/ /_/ '
echo $white"                                               B860H v5"
echo $yellow
echo Terima kasih telah menggunakan firmware Ice Cream
echo bila ada pertanyaan silahkan bertanya melalui chat group telegram
echo
sleep 5
clear
exit
fi


if [ $awal = 4 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Ganti Launcher"
echo $yellow"=========================================================================================================="
echo
echo $white"Pilihan Launcher : "
echo $yellow
echo "1) IceCream Launcher"
echo "2) ATV launcher"
echo "3) Google TV Home Launcher"
echo "4) Windows 10 Launcher" $cyan"(Butuh mouse/remote original)"
echo $yellow"5) Launcher Default (IndiHome/UseeTV)"
echo $purple"0) Exit"
echo $green
echo -n "Masukan Pilihan Anda => $white"
read launcher
fi

if [ $launcher = 1 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Ganti Launcher"
echo $yellow"=========================================================================================================="
echo
echo $cyan"Launcher Akan Diganti Menjadi IceCream Launcher ..."
echo
sleep 3
dd if=/system/etc/icefile/launcher/IceCream_launcher.apk of=/system/priv-app/TvLauncher/TvLauncher.apk
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
echo
echo $white Device Akan Reboot Dalam $red 5 DETIK
sleep 5
reboot
fi

if [ $launcher = 2 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Ganti Launcher"
echo $yellow"=========================================================================================================="
echo
echo $cyan"Launcher Akan Diganti Menjadi ATV Launcher ..."
echo
sleep 3
dd if=/system/etc/icefile/launcher/ATV_launcher.apk of=/system/priv-app/TvLauncher/TvLauncher.apk
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
echo
echo $white Device Akan Reboot Dalam $red 5 DETIK
sleep 5
reboot
fi

if [ $launcher = 3 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Ganti Launcher"
echo $yellow"=========================================================================================================="
echo
echo $cyan"Launcher Akan Diganti Menjadi Google TV Home Launcher ..."
echo
sleep 3
dd if=/system/etc/icefile/launcher/GoogleHome_launcher.apk of=/system/priv-app/TvLauncher/TvLauncher.apk
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
echo
echo $white Device Akan Reboot Dalam $red 5 DETIK
sleep 5
reboot
fi

if [ $launcher = 4 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Ganti Launcher"
echo $yellow"=========================================================================================================="
echo
echo $cyan"Launcher Akan Diganti Menjadi Windows 10 Launcher ..."
echo
sleep 3
dd if=/system/etc/icefile/launcher/Dekstop_launcher.apk of=/system/priv-app/TvLauncher/TvLauncher.apk
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
echo
echo $white Device Akan Reboot Dalam $red 5 DETIK
sleep 5
reboot
fi

if [ $launcher = 5 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Ganti Launcher"
echo $yellow"=========================================================================================================="
echo
echo $cyan"Launcher Akan Diganti Menjadi UseeTV Launcher ..."
echo
sleep 3
dd if=/system/etc/icefile/launcher/UseeTV_launcher.apk of=/system/priv-app/TvLauncher/TvLauncher.apk
clear
echo $yellow"=========================================================================================================="
echo $white"                                                  SUKSES"
echo $yellow"=========================================================================================================="
echo
echo $white Device Akan Reboot Dalam $red 5 DETIK
sleep 5
reboot
fi

if [ $launcher = 0 ]
then
clear
echo $white"                                                                          t.me/Ice_Cream_STB"
echo $cyan'                                ____          ______                        '
echo '                               /  _/_______  / ____/_______  ____ _____ ___ '
echo '                               / // ___/ _ \/ /   / ___/ _ \/ __ `/ __ `__ \'
echo '                             _/ // /__/  __/ /___/ /  /  __/ /_/ / / / / / /'
echo '                            /___/\___/\___/\____/_/   \___/\__,_/_/ /_/ /_/ '
echo $white"                                               B860H v5"
echo $yellow
echo Terima kasih telah menggunakan firmware Ice Cream
echo bila ada pertanyaan silahkan bertanya melalui chat group telegram
echo
sleep 5
clear
exit
fi


if [ $awal = 5 ]
then
clear
echo $yellow"=========================================================================================================="
echo $white"                                           Change YouTube Mobile or TV"
echo $yellow"=========================================================================================================="
echo
echo
echo $white"                1) YouTube Mobile                               2) YouTube TV"
echo
echo $green
echo -n "Masukan Pilihan Anda ==> $white"
read YT
fi 

