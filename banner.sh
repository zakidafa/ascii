#!/usr/bin/env bash

clear

#########################################
# Colors (TrueColor)
#########################################

RESET="\e[0m"
BOLD="\e[1m"

RED="\e[38;2;255;80;80m"
WHITE="\e[38;2;255;255;255m"

C1="\e[38;2;17;76;170m"
C2="\e[38;2;30;100;210m"
C3="\e[38;2;45;125;235m"
C4="\e[38;2;70;150;255m"
C5="\e[38;2;95;175;255m"
C6="\e[38;2;120;200;255m"
C7="\e[38;2;150;220;255m"
C8="\e[38;2;190;235;255m"
C9="\e[38;2;235;248;255m"

#########################################
# System Information
#########################################

HOSTNAME=$(hostname)

IP=$(hostname -I 2>/dev/null | awk '{print $1}')

if [ -z "$IP" ]; then
    IP=$(ip route get 1.1.1.1 2>/dev/null | awk '/src/ {print $7}')
fi

KERNEL=$(uname -r)
UPTIME=$(uptime -p)

#########################################
# Logo
#########################################

echo -e "${C1}                     @@${RESET}"
echo -e "${C1}                    @@@@${RESET}"
echo -e "${C2}                   @@@@@@${RESET}"
echo -e "${C2}                  @@@@@@@@${RESET}"
echo -e "${C2}          @%     @@@@  @@@@     *@:${RESET}"
echo -e "${C3}         @@@@@  @@@@    @@@@  @@@@@${RESET}"
echo -e "${C3}@@@     @@@@@@ @@@@      @@@@ @@@@@@     @@@${RESET}"
echo -e "${C3}@@@@@@@@@@    @@@@        @@@@    @@@@@@@@@@${RESET}"
echo -e "${C4} @@@@@@@@@@* @@@@          @@@@ =@@@@@@@@@@${RESET}"
echo -e "${C4} @@@    @@@ @@@@            @@@@ @@@    @@@${RESET}"
echo -e "${C4}  @@@      @@@@              .@@@      @@@${RESET}"
echo -e "${C5}  =@@@    @@@@     :@@@@@@@@@@@  @    @@@-${RESET}"
echo -e "${C5}   @@@   @@@@   @@@@@@@*  .@@@@@@     @@@${RESET}"
echo -e "${C5}    @@@ @@@#  @@@@@            @@@@  @@@${RESET}"
echo -e "${C6}    @@@@@@=@@@@@        :*       @@@ :@@${RESET}"
echo -e "${C6}     @@@@@@@@@       @@@@@@@@     @@@ @${RESET}"
echo -e "${C6}       @@@%        @@@@    @@@=   @@@${RESET}"
echo -e "${C7}                  @@@       @@@   @@@${RESET}"
echo -e "${C7}                 @@@       @@@%   @@@${RESET}"
echo -e "${C7}                @@@      *@@@@    @@@${RESET}"
echo -e "${C8}                     :@@@@@@     @@@${RESET}"
echo -e "${C8}              @@@@@@@@@@@      +@@@${RESET}"
echo -e "${C8}          @@@@@@@@@          @@@@@${RESET}"
echo -e "${C9}        @@@@#   %         @@@@@@${RESET}"
echo -e "${C9}      @@@@    @@@   %@@@@@@@@  =@${RESET}"
echo -e "${C9}     @@@@    @@@     @@@@     @@@@${RESET}"
echo -e "${C9}    +@@@    @@@:       @@@@     @@@@${RESET}"
echo -e "${C9}    @@@    @@@@         %@@@*    #@@@=${RESET}"
echo -e "${C9}   @@@    @@@%            @@@@     @@@@${RESET}"
echo -e "${C9}  @@@ @@@@@@                @@@@@    @@@@${RESET}"
echo -e "${C9} @@@@@@@@.                    @@@@@@@@@@@@${RESET}"

echo

#########################################
# Server Information
#########################################

printf "${WHITE}────────────────────────────────────────────────────────────${RESET}\n"
printf "🖥  ${BOLD}Hostname${RESET} : %s\n" "$HOSTNAME"
printf "🌐 ${BOLD}IP Addr ${RESET} : %s\n" "$IP"
printf "⚙️  ${BOLD}Kernel  ${RESET} : %s\n" "$KERNEL"
printf "⏱  ${BOLD}Uptime  ${RESET} : %s\n" "$UPTIME"
printf "${WHITE}────────────────────────────────────────────────────────────${RESET}\n"

#########################################
# Warning
#########################################

echo -e "${RED}${BOLD}⚠️  PERINGATAN KERAS ⚠️${RESET}"
echo
echo "Anda saat ini berada di SERVER PRODUCTION."
echo
echo "Mohon berhati-hati dalam menjalankan perintah."
echo
echo "Pastikan:"
echo "  • Perintah sudah dicek ulang."
echo "  • Tidak mengganggu layanan aktif."
echo "  • Tidak dieksekusi secara impulsif."
echo
printf "${WHITE}────────────────────────────────────────────────────────────${RESET}\n"
