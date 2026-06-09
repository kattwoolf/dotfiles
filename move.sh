#!/bin/bash

source=$(realpath $1)
dest="$2/${source#$HOME/}"

mkdir -p "$dest"
mv -v "$source" "$dest/../"
stow $2
