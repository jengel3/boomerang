#!/bin/bash

script_dir=$(dirname $0)

if [ $# -eq 0 ]; then
  echo "Usage: ./repo.sh <command>" >&2
  exit 1
fi

if [ "$1" == "add" ]; then
	echo "Adding new package...";

	if [ "$#" -ne 3 ]; then
	  echo "Usage: ./repo.sh add <package> <deb file>" >&2
	  exit 1
	fi

	cp "$3" "$script_dir/debs/$2.deb"

elif [ "$1" == "update" ]; then
	echo "Updating packaging...";
fi

rm Packages.bz2
dpkg-scanpackages -m debs/ /dev/null > Packages
bzip2 < Packages > Packages.bz2