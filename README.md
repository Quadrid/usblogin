# usblogin
USB Stick login for lorOS

To create an USB key for an user, run usblogin create path_to_usb_device username.

## todo

- clean up this readme

## how it works
the creation of a key takes an usb device and sets the content to a header (USBLOGINKEY) and a bunch of randomness. The hash of the device gets stored in /var/lib/usblogin-keys/username. To verify, the hash of the device gets compared to the saved hash. If the hash is the same, the exit code is 0 (sucess), otherwise it is a non-zero digit.

init just creates the /var/lib/usblogin-keys directory.
