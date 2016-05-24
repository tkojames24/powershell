
#Run this either in CMD or Powershell to enable computer to allow bitlocker to be enabled #


powershell.exe -command "New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft -Name FVE; Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\FVE -Name OSEnablePrebootInputProtectorsOnSlates -Value 1 -Type DWord -Force"

