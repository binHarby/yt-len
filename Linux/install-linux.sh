#!/bin/sh

echo "Installing yt-len dependancies ===>"
pip install -r ../requirements.txt --user

echo "Installing yt-len ===>"
sudo cp ../yt-len /usr/bin/yt-len
sudo chmod +x /usr/bin/yt-len

echo "===>Done."
echo "Open terimnal and type yt-len for usage"
