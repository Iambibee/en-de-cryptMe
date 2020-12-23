#!/bin/bash

echo ""
echo "     --Welcome to my simple encrypt and decrypt tool!--"
echo ""
echo "Please choose what you want to do : "

CHOICE="Encrypt Decrypt Quit"


function FUNCTION_01(){
select option in $CHOICE;do
if [ $REPLY = 1 ];
then
	echo "Great!Your choice is $option!"
	read -p "Please enter the file name or path* what you want to encrypt :" ENCRYPT
	gpg -c $ENCRYPT

elif [ $REPLY = 2 ];
then
	echo "Great!Your choice is $option!"
	read -p "Please enter the file name or path what you want to decrypt :" DECRYPT
	gpg -d $DECRYPT

elif [ $REPLY = 3 ];
then
	break

else
	echo "Invalid user input.Please try again with valid input"
fi
done
}

function FUNCTION_02(){
	echo "         ---Thank you---"

}


FUNCTION_01
FUNCTION_02
