#!/bin/bash
#copy 
# -----------------------------------------------------------------------------
# Info:
#   author:    Santhosh Veer
#   file:      package.sh
#   created:   20.02.2023
#   revision:  01.03.2023
#   version:   0.5
# -----------------------------------------------------------------------------
#
# Requirement:
#  Termux - Check if a program/Package is exists or Not
# -----------------------------------------------------------------------------

# Functions ==============================================
"clear"
echo -e "\033[33;1m"
figlet -f big W E L C O M E
echo -e "\033[0m"
echo -e "            \033[36;1m Checking Installed Packages..."
echo -e "\\n"
echo -e "       \033[32;1m ✔   Installed\033[0m"
echo -e "        \033[31;1m❌  Not Installed\033[0m"
echo -e "\\n"
sleep 1;

echo -e "                 \033[34;1m++ List the Packages ++\033[0m"
sleep 1;
echo -e "\\n"

# return 1 if global command line program installed, else 0
# example
# echo "curl: $(program_is_installed curl)"
function program_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type "$1" >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

# display a message in red with a cross by it
# example
# echo echo_fail "No"
function echo_fail {
  # echo first argument in red
  echo -e "❌ ${1}"
}

# display a message in green with a tick by it
# example
# echo echo_fail "Yes"
function echo_pass {
  # echo first argument in green
  echo -e "\033[32;1m✔  ${1}\033[0m"
}

# echo pass or fail
# example
# echo echo_if 1 "Passed"
# echo echo_if 0 "Failed"
function echo_if {
  if [ "$1" == 1 ]; then
    echo_pass "$2"
  else
    echo_fail "$2"
  fi
}




# display a message in red with a cross by it
# example
# echo echo_fail "No"
function echo_feil {
  # echo first argument in red
  echo -e "\033[31;1m${1}"
}

# display a message in green with a tick by it
# example
# echo echo_fail "Yes"
function echo_pess {
  # echo first argument in green
  echo -e "\033[32;1m${1}"
}

# echo pass or fail
# example
# echo echo_if 1 "Passed"
# echo echo_if 0 "Failed"
function echo_fi {
  if [ "$1" == 1 ]; then
    echo_pess "$2"
  else
    echo_feil "$2"
  fi
}


# ============================================== Functions

# command line programs
echo -e "$(echo_fi "$(program_is_installed curl)")Curl     : $(echo_if "$(program_is_installed curl)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed python)")Python   : $(echo_if "$(program_is_installed python)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed python2)")Python 2 : $(echo_if "$(program_is_installed python2)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed python3)")Python 3 : $(echo_if "$(program_is_installed python3)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed toilet)")Toilet   : $(echo_if "$(program_is_installed toilet)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed git)")Git      : $(echo_if "$(program_is_installed git)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed wget)")Wget     : $(echo_if "$(program_is_installed wget)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed up)")Up       : $(echo_if "$(program_is_installed up)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed cmatrix)")Cmatrix  : $(echo_if "$(program_is_installed cmatrix)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed fish)")Fish     : $(echo_if "$(program_is_installed fish)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed ruby)")Ruby     : $(echo_if "$(program_is_installed ruby)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed php)")Php      : $(echo_if "$(program_is_installed php)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed perl)")Perl     : $(echo_if "$(program_is_installed perl)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed figlet)")Figlet   : $(echo_if "$(program_is_installed figlet)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed zip)")Zip      : $(echo_if "$(program_is_installed zip)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed unzip)")Unzip    : $(echo_if "$(program_is_installed unzip)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed tor)")Tor      : $(echo_if "$(program_is_installed tor)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed tar)")Tar      : $(echo_if "$(program_is_installed tar)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed cowsay)")Cowsay   : $(echo_if "$(program_is_installed cowsay)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed bash)")Bash     : $(echo_if "$(program_is_installed bash)")"
sleep 2;
echo -e "$(echo_fi "$(program_is_installed nmap)")Nmap     : $(echo_if "$(program_is_installed nmap)")"
sleep 2; 
