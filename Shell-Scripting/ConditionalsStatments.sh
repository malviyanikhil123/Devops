#!/bin/bash

read -p "Enter your name: " username 
read -p "Enter your password: " password

if [[ $username == "Nikhil" ]];
then 
	if [[ $password == "123" ]];
	then 
		echo "User login Successfully!"
	else 
		echo "Incorrect password for user $username"
	fi
else 
	echo "Enter correct username and password"
fi
