﻿powershell.exe -command "New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft -Name FVE; Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\FVE -Name OSEnablePrebootInputProtectorsOnSlates -Value 1 -Type DWord -Force"

