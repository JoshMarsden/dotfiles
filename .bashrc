# .bashrc
# Author: Joshua Marsden
# Github: github.com/JoshMarsden/dotfiles

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# A simple script to easily login to any lab computer from the gateway
goto () {
    if [ ! -z $1 ] ; then
        # Replace 'cse-labs-login' with your own SSH private key
        ssh -i ~/.ssh/cse-labs-login "jb$1"
    fi
}

# save $PWD on cd
function cd {
    builtin cd $@
    pwd > ~/.last_dir
}

# restore last saved path on login
if [ -f ~/.last_dir ]
    then cd `cat ~/.last_dir`
fi

# cd like a boss
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."

# revamp the common commands
alias ls="ls -l --color=auto"
alias diff="diff -yr --suppress-common-lines"

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
