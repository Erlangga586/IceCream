clear
blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
echo $blue
echo "==========================================================================================================="
echo "                                        Ice Cream B860H v5"
echo "==========================================================================================================="
echo $red "                                                                                         t.me/Ice_Cream_STB"
echo $white "silahkan pilih menu :"
echo $yellow
echo "1) Change Boot Logo & dll                      4) Ganti launcher"
echo "2) Ganti Playstore TV/mobile                   5) Ganti Youtube TV/mobile"
echo "3) install apk dari sdcard/flashdisk           6) change recovery (TWRP/default)"
echo "                                               0) Exit"
echo $green
read -p "Silahkan Masukan Pilihan Anda => " awal

else [ $awal = () ] || [ $awal = () ]
then
clear
fi

if [ $awal = 0 ] || [ $awal = 0 ]
then
clear
echo $yellow
echo "==========================================================================================================="
echo "                              ICE CREAM B860H v5""                        "$red "t.me/ice_cream_STB"
echo $yellow"==========================================================================================================="
echo $white
echo Terima kasih telah menggunakan firmware Ice Cream 
echo bila ada pertanyaan silahkan beratnya melalui chat group telegram 
echo 
sleep 5
clear
fi

if [ $awal = 1 ] || [ $awal = 1 ]
then
clear
echo $yellow
echo "==========================================================================================================="
echo "                                Change Boot Logo dan Boot Animation"
echo "==========================================================================================================="
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
echo
read -p "Masukan Pilihan Anda => " boot

if [ $boot = 1 ] || [ $boot = 1 ]
then
clear
echo "==========================================================================================================="
echo "                                              Change Boot Logo"
echo "==========================================================================================================="
sleep 3
dd if=/sdcard/Ice_Cream_Files/boot_logo/*.img of=/dev/block/logo
clear
echo "==========================================================================================================="
echo "                                                  SUKSES"
echo "==========================================================================================================="
echo
echo Device Akan Reboot Dalam 5 detik
sleep 5
reboot
fi

if [ $boot = 2 ] || [ $boot = 2 ]
then
clear
echo "==========================================================================================================="
echo "                                              Change Boot Animation"
echo "==========================================================================================================="
sleep 3
dd if=/sdcard/Ice_Cream_Files/boot_animation/*.zip of=/system/media/bootanimation.zip
clear
echo "==========================================================================================================="
echo "                                                  SUKSES"
echo "==========================================================================================================="
echo
echo Device Akan Reboot Dalam 5 detik
sleep 5
reboot
fi

if [ $boot = nul ] || [ $boot = nul ]
then
clear
fi
fi

