#!/bin/bash
set -e
sudo cp src/usblogin /bin/usblogin
sudo chmod +x /bin/usblogin
sudo usblogin init
