#!/bin/bash

read -p "Enter your name: " username

echo "Your name is $username"

sudo useradd -m $username

echo "New User added"
