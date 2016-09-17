#!/bin/sh
# Adds my personal Dropbox setup to PATH upon terminal startup 
# if not already present in .bashrc.

# Compatible with Ubuntu 16.04.1 -- other Linux distros may require "~/.bash_profile"
# Built as an exercise, very little utility
# Cameron Peterson 9/16/16

if grep -q 'PATH=$PATH:~/Dropbox/Programming/MyPrograms/bin' ~/.bashrc; then
	echo Found, no changes made.
else
	echo Not found, adding line.
	echo 'PATH=$PATH:~/Dropbox/Programming/MyPrograms/bin' >> ~/.bashrc
	echo "export PATH" >> ~/.bashrc
fi
