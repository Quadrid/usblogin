# usblogin
USB Stick login for lorOS

To create an USB key for an user, run usblogin create path_to_usb_device username.

## todo
Create PAM module: iterate over all /dev/sd\[a-z\], if the first chars (head -c 11 path_to_device) are USBLOGINKEY, the device is a key. If the device is a key, try to check the key for each user's key (usblogin verify path_to_device username) (exit 0: key correct). log in the first user with a matching key. if there is no matching key, repeat the process.
