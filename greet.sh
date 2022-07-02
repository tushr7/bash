#! /bin/bash

read -p "Enter your Name: " Name

echo "Hey, $Name! How you doin'?"
read respone

echo "Cool, nice to meet you $Name. Do you know "
sleep 1

# echo "Your are using this machine as $USER and belong to groups $(groups $dami)"
# user=$(groups $USER | grep -o "sudo")

if [[ $(groups "$USER" | grep -o "sudo") == "sudo" ]]; then
    echo "your are sudo user. get your  hands dirty"
else
    echo "your are not sudo user"
fi


