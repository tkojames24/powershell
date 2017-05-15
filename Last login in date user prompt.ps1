do 
    {
        $a = Read-Host "Please enter the computer name"
        if ($a -ne "")
        {$a + "`n" + "=========================="; Get-ADComputer -identity  $a -Properties * | FT Name, LastLogonDate  }
    } 
while ($a -ne "")

