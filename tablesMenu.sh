#!/bin/bash

export PS3=$'\n\e[45mTables Menu>\e[0m '
echo ""
select choice in 'Create Table' 'Insert Table' 'Select Table' 'Update to Table' 'Drop Table' 'List Tables' 'Delete From Table' 'Back to Master' 'Exit'; do
      case $choice in
      'Create Table')
            . createTb.sh
            break
            ;;
      'Insert Table')
            . insertTb.sh
            break
            ;;
      'Select Table')
            . selectTb.sh
            break
            ;;
      'Update to Table')
            . updateTb.sh
            break
            ;;
      'Drop Table')
            . dropTb.sh
            break
            ;;
      'List Tables')
            . listTb.sh
            break
            ;;
      'Delete From Table')
            . deleteFromTable.sh
            break
            ;;
      'Back to Master')
            cd ..
            . mainMenu.sh
            break
            ;;
      'Exit')
            echo -e "\e[44mBye\e[0m"
            break
            ;;
      *)
            echo -e "\e[41mPlease select a reliable option.\e[0m"
            ;;

      esac
done
