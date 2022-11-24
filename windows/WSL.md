# Enable feature


# install
from Microsoft Store

# systemd
[startup file / shell:startup]  
wsl -d Ubuntu-22.04 if [ -e /run/tmpfiles.d/tmp.conf ]; then sudo rm /run/tmpfiles.d/tmp.conf; fi  
wsl -d Ubuntu-22.04 sudo mount -t binfmt_misc binfmt_misc /proc/sys/fs/binfmt_misc  
wsl -d Ubuntu-22.04 sudo /usr/libexec/wsl-systemd  
pause


# logging

# tips
ll /proc/sys/fs/binfmt_misc
- register
- status
---
Enable

- WSLInterop
---
enabled  
interpreter /tools/init  
flags: F  
offset 0  
magic 4d5a 

- register
- unknown
