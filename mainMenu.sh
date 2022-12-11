#!/bin/bash

export PS3=$'\n\e[42mDatabase Menu>\e[0m '

select op in "Create Database" "List Database" "Connect to Database" "Drop Database" "Exit"; do
    case $op in
    "Create Database")
        . createDb.sh
        break
        ;;
    "List Database")
        . listDb.sh
        break
        ;;
    "Connect to Database")
        . connectDb.sh
        break
        ;;
    "Drop Database")
        . dropDb.sh
        break
        ;;
    "Exit")
        echo -e "\e[44mBye\e[0m"
        break
        ;;
    *)
        echo -e "\e[41mPlease select a reliable option.\e[0m"
        ;;
    esac
done
