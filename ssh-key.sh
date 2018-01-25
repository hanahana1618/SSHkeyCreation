#!/bin/bash

#we may need to cat the known_hosts file
echo "Here are all the ssh keys in your system:"
ls -al ~/.ssh

echo "Would you like to create a new ssh-key (y/n)?"
read choice

case $choice in
	n)
		echo "It's a no. Exit."
		;;
	y)
		echo "We will generate the key now. Enter enter whenever prompted for a location for the ssh key and the paraphrase."
		echo "Github email address?"
		read email
		ssh-keygen -t rsa -b 4096 -C $email
		echo "Paste from where it says ssh-rsa until your email address on  the SSH creator key on Github. For more info: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/"
		cat ~/.ssh/id_rsa.pub
		;;
	*)
		echo "Wrong value entered. Exiting."
		;;
esac
