# default maximum duration in minutes is one day to change first check to see what it is set to currently by running command Get-oCalendarProcessing #

-Identity email | fl 

# to change run following command #

 Set-oCalendarProcessing -Identity email -MaximumDurationInMinutes 50000