#!/bin/bash
# https://github.com/ShanaMaid/terminal-translate

which tl > /dev/null 2>&1
if [ $? == 0 ]; then
    echo "Welcome to use translate tools, please input the context!"
    for (( i=0; i<100;i=i+1 ))
    do
        read -p "please input what you want to translate: " context
        result=`tl ${context}`
        echo -e "${result}"
    done
else
    echo "Translate tools by node is not exist!"
    read -p "The tl depend on nodejs, Do you want to install now?[y/n]: " confirm
    case $confirm in
        [yY])
            echo "start install the tl tools now!"
            npm install terminal-translate -g && echo "install tl tools successful"
            ;;
        [nN])
            echo "cancle install it now!"
            ;;
        *)
    esac
fi
