#!/bin/bash

for i in $(find . -mindepth 1 -maxdepth 1 -type d ! -name 'common*' ! -name '.*' -print); do
	echo "Initializing $i"
	cd $i
	vagrant up
	vagrant halt
	cd ..
done

