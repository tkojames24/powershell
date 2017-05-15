#Set Mailbox to shared # 
Set-oMailbox -Identity [UPN] –type Shared 

# Set calender to auto accept and add person to subject and not allow conflicts 
 Set-CalendarProcessing -Identity "Conf 212" -AutomateProcessing AutoAccept -DeleteComments $true -AddOrganizerToSubject $true -AllowConflicts $false
# Allows people to see more info then just free and busy 
 Set-MailboxFolderPermission -AccessRights LimitedDetails -Identity Room:\calendar -User default

 # Allows to book room up to a year in the future 
Set-oCalendarProcessing "email address" -BookingWindowInDays 365