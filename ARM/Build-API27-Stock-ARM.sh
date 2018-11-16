#!/bin/bash

SAUCE=~/android/opengapps
ARCH=arm
API=27

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

printf '\033]2;%s\007' "Building $ARCH SDK-$API Stock GAPPS"
echo "${cyan}Building $ARCH SDK-$API Stock GAPPS"
echo ""
echo "Writing by 19cam92@xda"
echo "Script version 1.0.0${reset}"

echo " "
cd $SAUCE
make $ARCH-$API-stock
echo " "
echo "${green}Done!${reset}"
read
