# Setupwizard Bypass Script
A simple script for people who couldn't get through initial setup or just simply doesn't want to do enitre process, any bug report and code improvement is appreciated. Feel free to use or include this script, keep my name up there if possible.  

Do note this script may not work on OEM roms or future Android versions if additional strings were added.  

This script currently should work with Android version 6~13, works best with AOSP based roms.  

# On what ROM/Device this script works?
- OxygenOS 10.0.1 / OnePlus 5T
- [Stock 6.0.1 / Nexus 5](https://t.me/asrielshowcases/3168)
- And probably more...  

# Requirements
- Any custom recovery that able to mount and decrypt `/data` partition ([TWRP](https://twrp.me), [OrangeFox](https://orangefox.download), etc...)  

# Usage
- Boot into system at least once (and make sure you see the setup screen)
- Reboot into recovery
- Go to terminal or adb shell and execute this script like this:  
```
./path/to/the/script/bypass.sh
```
- Reboot after the whole process completed  

# FAQ
  
It refuses to execute and returns "Permission denied" error.
- Run following command to give it proper permissions to be executed:  
```
chmod a+x /path/to/the/script/bypass.sh
```
  
Other issues  
- Feel free to open new issues in this repo.
