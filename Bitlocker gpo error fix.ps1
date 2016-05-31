#Run this either in CMD or Powershell to enable computer to allow bitlocker to be enabled off domain #

powershell.exe -command "New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft -Name FVE; Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\FVE -Name OSEnablePrebootInputProtectorsOnSlates -Value 1 -Type DWord -Force"

#Then enable Bitlocker on machine and save recovery key to usb #

# Join back to domain, Now need to back up key to Ad, First find the password in CMD #

manage-bde -protectors -get c:

# Run this in CMD with admin take note of ID #
# this backups up key to ad #

manage-bde -protectors -adbackup c: -id {}

# check make sure key is in AD # 