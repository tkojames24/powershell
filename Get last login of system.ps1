$a = Get-Content "C:\comp.txt"

foreach ($i in $a)
    {$i + "`n" + "=========================="; Get-ADComputer -identity  $i -Properties * | FT Name, LastLogonDate -Autosize  | Out-File C:\login.txt -Append}