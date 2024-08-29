#!/bin/bash

#In this exercise we are going to create a new user

#Get comment for USERNAME
read -p "Enter Command for Username input: " USERCOM

#Getting input form user for UserName
read -p "${USERCOM}: " USERNAME

#Getting comment for password
read -p "Enter command for Password input: " PASSCOM

#Getting password
read -p "${PASSCOM}: " PASSWORD

#Adding User Name
useradd -c "Linux User" -m ${USERNAME}

#Adding Password
echo ${PASSWORD} | passwd --stdin ${USERNAME}

#Force login on next attempt
passwd -e ${USERNAME}

echo "USERNAME IS ${USERNAME} and Password is ${PASSWORD}"
