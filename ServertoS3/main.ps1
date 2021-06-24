
$d = [datetime](Get-ItemProperty -Path C:\Users\andreas.t\Test -Name LastWriteTime).lastwritetime
$testvar = (get-date) - $d
$testvar.Days
if (($testvar.Days -gt 0 ) -eq $true){
    Move-Item -Path C:\Users\andreas.t\Test\thisisatest.txt -Destination C:\Users\andreas.t\Test2
    Write-Output "file transferred"
}


#$writedate = Get-ItemProperty -Path $source -Name LastWriteTime
#Move-Item -Path C:\test.txt -Destination E:\Temp\tst.txt