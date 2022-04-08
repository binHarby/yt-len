#!/bin/sh

echo "Uninstalling yt-len dependancies ===>"
pip uninstall -r ../requirements.txt --user

echo "Uninstalling yt-len ===>"
sudo rm /usr/bin/yt-len

echo "===>Done."
echo "yt-len is uninstalled"
