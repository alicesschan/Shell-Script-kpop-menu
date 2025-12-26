#!/bin/bash
#Description: What's your favorite kpopgroup ?

kpopGroup=1
while [ $kpopGroup -ne "5" ]
do
   clear
   echo "======================="
   echo "      (1) BTS "
   echo "      (2) TWICE"
   echo "      (3) BLACKPINK"
   echo "      (4) OTHER"
   echo "      (5) GOOD BYE "
   echo "======================="
   read -n 1 -p "Chose your favorite kpopgroup: " kpopGroup

   case $kpopGroup in
        1 )
            echo -e "\nI like BTS too ><\n"
            ;;
        2 )
            echo -e "\nThey have great teamwork !\n"
            ;;
        3 )
            echo -e "\nI miss them ;;\n"
            ;;
        4 )
            echo -e "\n"
            read -p "Which kpopgroup do you like :" Other 

            if [ -z "$Other" ]
            then
                 echo "You didn't enter any kpopgroup."
            else
                 echo "Why do you like $Other ?"

                 read -p "Your reason :" Reason

                 if [ -z "$Reason" ]
                 then
                      echo "Sometime you just like a kpopgroup for no reason."
                 else
                      echo "I like your reason !!"
                 fi
            fi
            ;;
        5 )
            kpopGroup=5
            echo ""
            ;;
        * )
            echo -e "\nYou have to choose !\n"
            kpopGroup=0
            ;;
   esac
   read -n 1 -p "Press Enter to continue."
done

exit 0
