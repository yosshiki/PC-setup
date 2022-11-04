# install JupyterLab in WSL2
prerequisite: windows pc

ref https://jupyter.org/

recommend is jupyterlab  
ref https://jupyter.org/install  

procedure  
- install ubuntu as wsl2
  - enable windows feature
  - change kernel setting
  - install Ubuntu from Microsoft Store
    - define username/password
- ubuntu setting
  - install python3, pip
  - install jupyterlab
  - start jupyterlab
  - access   http://localhost:8888/lab?token=XXXXXXXXXXXXXXXXXXXXXXXXXX

```
# enable windows feature
Win+R
cmd
> dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

> dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# change kernel setting
> wsl --set-default-version 2

# install Ubuntu from Microsoft Store

# define username/password

# install python3, pip
sudo apt install python3
sudo apt install python3-pip
sudo pip3 install jupyterlab

# start jupyter-lab
jupyter-lab

# start jupyter-lab with permission of root access
jupyter-lab --allow-root &

# access   http://localhost:8888/lab?token=XXXXXXXXXXXXXXXXXXXXXXXXXX
```

