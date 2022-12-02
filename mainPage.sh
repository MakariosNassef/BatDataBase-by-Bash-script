#!/bin/bash

echo 'Welcome to the MySQL monitor.'


if [[ `ls | grep "DB"` != "" ]]
then
     cd $PWD/DB
else
    mkdir $PWD/DB
    cd $PWD/DB
fi


select op in "Create Database" "List Database" "Connect to Database" "Drop Database" "Exit"
do
    case $op in
        "Create Database" )
        echo "Create Database"
        ;;
        "List Database" )
        echo "List Database"
        ;;
        "Connect to Database" )
        echo "Connect to Database"
        ;;
        "Drop Database" )
        echo "Drop Database"
        ;;
        * )
        break
        ;;
    esac
done

