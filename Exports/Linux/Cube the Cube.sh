#!/bin/sh
printf '\033c\033]0;%s\a' Cube collector 3d
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Cube the Cube.x86_64" "$@"
