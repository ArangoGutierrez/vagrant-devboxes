#!/bin/bash

for i in $(find . -mindepth 1 -maxdepth 1 -type d ! -name 'common*' ! -name '.*' -print); do
	echo "Halting $i"
	cd $i
	vagrant halt
	cd ..
done

