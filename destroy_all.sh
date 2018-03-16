#!/bin/bash

for i in $(find . -mindepth 1 -maxdepth 1 -type d ! -name 'common*' ! -name '.*' -print); do
	echo "Destroying $i"
	cd $i
	vagrant destroy --force
	cd ..
done

