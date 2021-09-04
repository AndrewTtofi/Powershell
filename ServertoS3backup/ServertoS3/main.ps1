


#$counter = 0 #This counter counts the amount of files transferred
#$d = [datetime](Get-ItemProperty -Path C:\Users\andreas.t\Test -Name LastWriteTime).lastwritetime #this variable is the date modified of the files
#$diffindays = (get-date) - $d   #this variable is the difference between date modified and current date
#$diffindays.Days #we print the intiger of the date modified

#$date = Get-Date

#if (($diffindays.Days -gt 7 ) -eq $true){   #we compare the date modified with 7 days. If 7 days have passed we proceed with the transfer of the file
 #   Move-Item -Path  -Destination C:\Users\andreas.t\Test2  #move the file to the location
  #  Write-Output "file transferred" #output the file that was transferred
   # $counter = $counter + 1 #count the amount of files transferred
#}
#}

#$writedate = Get-ItemProperty -Path $source -Name LastWriteTime
#Move-Item -Path C:\test.txt -Destination E:\Temp\tst.txt



#$Folder1 = Get-ChildItem C:\Users\andreas.t\Test2

#Write-Output $Folder1
#Compare-Object $Folder1 $date -Property date



Get-ChildItem -Path "C:\Users\andreas.t\Test" -Recurse |
Where-Object {$_.LastWriteTime -lt (get-date).AddDays(-4)} |
move-item -destination "C:\Users\andreas.t\Test2"


# Foreach($item in (Get-ChildItem 'C:\Users\andreas.t\Test' -recurse)){ #gci means get children
#    $d = [datetime](Get-ItemProperty $item -Name LastWriteTime).lastwritetime
#    $diffindays = (Get-Date) - $d
#    if (($diffindays.Days -gt 7 ) -eq $true){
#       move-item -destination "C:\Users\andreas.t\Test2"
#    }

# }


