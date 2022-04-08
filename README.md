# usblogin
USB Stick login for lorOS

To create an USB key for an user, run usblogin create path_to_usb_device username.

## todo
- Create PAM module: iterate over all /dev/sd\[a-z\], if the first chars (head -c 11 path_to_device) are USBLOGINKEY, the device is a key. If the device is a key, try to check the key for each user's key (usblogin verify path_to_device username) (exit 0: key correct). log in the first user with a matching key. if there is no matching key, repeat the process.
- clean up this readme

## how it works
the creation of a key takes an usb device and sets the content to a header (USBLOGINKEY) and a bunch of randomness. The hash of the device gets stored in /var/lib/usblogin-keys/username. To verify, the hash of the device gets compared to the saved hash. If the hash is the same, the exit code is 0 (sucess), otherwise it is a non-zero digit.

init just creates the /var/lib/usblogin-keys directory.

create and init require root permissions.
