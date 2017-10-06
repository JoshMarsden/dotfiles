# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# A simple script to easily login to any lab computer from the gateway.
goto () {
    if [ ! -z $1 ] ; then
        ssh -i ~/.ssh/cse-login "jb$1"
    fi
}

# cd like a boss
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."

# revamp the common commands
alias ls="ls -l --color=auto"
alias diff="diff -yr --suppress-common-lines"
#alias echo="echo -e"

# Output an awesome intro screen after the CSE department announcements
echo -e "\e[34m" # Change outpute to blue
echo -e "                                         **=                                    "
echo -e "                                       ** =##                                   "
echo -e "                                     ** =#####                                  "
echo -e "                                   ** =#######                                  "
echo -e "                            ___**** =#########                                  "
echo -e "                         _**  _-=############                                   "
echo -e "                       /* =#################                                    "
echo -e "                    __* =################## , ,                                 "
echo -e "                _--\` =####################  #\\\\%\\\\_                               "
echo -e "            _--\`=########################_==######                              "
echo -e "         _-\` =####################################                              "
echo -e "     __-\` =####################################*'                               "
echo -e "   :\`\`=#####################################*'                                  "
echo -e "    \`=###################################*'                                     "
echo -e "          / ##########################*'                                        "
echo -e "         / ##########################                                           "
echo -e "        / ##########################                                            "
echo -e "       /- =########################                                             "
echo -e "       / #########################                                              "
echo -e "    _-\`=#########################                                               "
echo -e "   / ############################                                               "
echo -e "\e[39m"
