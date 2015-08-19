#!/bin/bash

script_dir=$(dirname $0)

if [ "$#" -ne 2 ]; then
  echo "Usage: ./add.sh <package> <deb file>" >&2
  exit 1
fi

cp "$2" "$script_dir/debs/$1.deb"

dpkg-scanpackages debs/ > PackagesTemp 
