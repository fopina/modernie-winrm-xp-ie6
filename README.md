Repackaged WINXP modern.ie box with Powershell and WinRM to be able to use with Vagrant without any manual tweaking!

Build
-----

* `vagrant up` (it will hang as there's no WinRM yet but we just use the GUI)
* Download .NET 2.0 SP2 to `data/` - [NetFx20SP2_x86.exe](https://www.microsoft.com/en-us/download/details.aspx?id=1639)
* Download PowerShell + WinRMto `data/` - [WindowsXP-KB968930-x86-ENG.exe](https://www.microsoft.com/en-us/download/details.aspx?id=16818)
* Inside the VM, install those two which can be found in the default share `\\vboxsvr\vagrant\`
```
netfx20sp2_x86.exe /q /norestart
WindowsXP-KB968930-x86-ENG.exe /q /norestart
```
* Load `scripts\winrm.reg`
* Execute `scripts\setup_winrm.bat`

Links
-----

* http://www.emoxter.com/welcome-to-ghost/
* https://gist.github.com/andreptb/57e388df5e881937e62a
* https://www.bram.us/2014/09/24/modern-ie-vagrant-boxes/
