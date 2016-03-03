Repackaged WINXP modern.ie box with Powershell and WinRM to be able to use with Vagrant without any manual tweaking!

Downloads:
  .NET 2.0 - https://www.microsoft.com/en-us/download/details.aspx?id=1639
  Powershell + WinRM - https://www.microsoft.com/en-us/download/details.aspx?id=16818


* Create the DWORD LocalAccountTokenFilterPolicy  [HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System] and set to 1
* Use Local Security Settings (Secpol.msc) to change the setting of the "Network Access: Sharing and security model for local accounts" policy in Security Settings\Local Policies\Security Options to "Classic".

Run setup_winrm.bat script
