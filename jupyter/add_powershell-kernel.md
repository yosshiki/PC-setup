https://github.com/vors/jupyter-powershell did not work for my environment.
Ubuntu 22.04.01 LTS on WSL2 on Windows11(21H2 build 22000.1098)   


```
# dotnet install

# 
jupyter kernelspec list

  bash               /usr/local/share/jupyter/kernels/bash
  powershell         /usr/local/share/jupyter/kernels/powershell
  python3            /usr/local/share/jupyter/kernels/python3

# 
export PATH=$PATH:/root/.dotnet/tools
# 
dotnet interactive jupyter install

Installing using jupyter kernelspec module.
Installed ".NET (C#)" kernel.
Installing using jupyter kernelspec module.
Installed ".NET (PowerShell)" kernel.
Installing using jupyter kernelspec module.
Installed ".NET (F#)" kernel.

#
jupyter kernelspec list

Available kernels:
  .net-csharp        /root/.local/share/jupyter/kernels/.net-csharp
  .net-fsharp        /root/.local/share/jupyter/kernels/.net-fsharp
  .net-powershell    /root/.local/share/jupyter/kernels/.net-powershell
  bash               /usr/local/share/jupyter/kernels/bash
  powershell         /usr/local/share/jupyter/kernels/powershell
  python3            /usr/local/share/jupyter/kernels/python3

```
