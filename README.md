Repackaged WINXP modern.ie box with Powershell and WinRM to be able to use with Vagrant without any manual tweaking!

Downloads:
  .NET 2.0 - https://www.microsoft.com/en-us/download/details.aspx?id=1639
  Powershell + WinRM - https://www.microsoft.com/en-us/download/details.aspx?id=16818


* Create the DWORD LocalAccountTokenFilterPolicy  [HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System] and set to 1
* Use Local Security Settings (Secpol.msc) to change the setting of the "Network Access: Sharing and security model for local accounts" policy in Security Settings\Local Policies\Security Options to "Classic".

Run setup_winrm.bat script

Links
-----

* http://www.emoxter.com/welcome-to-ghost/
* https://gist.github.com/andreptb/57e388df5e881937e62a
* https://www.bram.us/2014/09/24/modern-ie-vagrant-boxes/
* https://social.msdn.microsoft.com/Forums/en-US/ad02461a-878c-49a9-bc08-a0199d69b85c/winrm-error-access-denied?forum=wcf
