#!/bin/bash

SAUCE=~/android/opengapps

###############################################################################################################################################
#Num  Colour    #define         R G B

#0    black     COLOR_BLACK     0,0,0
#1    red       COLOR_RED       1,0,0
#2    green     COLOR_GREEN     0,1,0
#3    yellow    COLOR_YELLOW    1,1,0
#4    blue      COLOR_BLUE      0,0,1
#5    magenta   COLOR_MAGENTA   1,0,1
#6    cyan      COLOR_CYAN      0,1,1
#7    white     COLOR_WHITE     1,1,1

yellow=`tput setaf 3`
green=`tput setaf 2`
cyan=`tput setaf 6`
red=`tput setaf 1`
reset=`tput sgr0`

printf '\033]2;%s\007' "Updating GAPPS Sources"
echo "${cyan}Updating GAPPS Sources"
echo ""
echo "Writing by 19cam92@xda"
echo "Script version 1.0.0${reset}"

echo " "
echo "${red}!!!! THIS SCRIPT NEEDS ROOT TO INSTALL BUILD TOOLS !!!!${reset}"
echo "${red}!!!!    PLEASE ENTER YOUR PASSWORD WHEN PROMTED    !!!!${reset}"
echo " "
sudo whoami

# Install Android build tools for Ubuntu
echo " "
echo -n "${yellow}Install Android build tools for Ubuntu (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-add-repository ppa:maarten-fonville/android-build-tools 
    sudo apt-get update
    sudo apt-get install android-build-tools-installer
else
    echo "Skipping Android build tools for Ubuntu"
fi

# Install lzip
echo " "
echo -n "${yellow}Install lzip (y/n)? ${reset}"
read answer
if echo "$answer" | grep -iq "^y" ;then
    sudo apt-get install lzip
else
    echo "Skipping lzip"
fi

# Updates Sources
echo " "
cd $SAUCE
./download_sources.sh --shallow
echo " "
echo "${green}Done!${reset}"
read
