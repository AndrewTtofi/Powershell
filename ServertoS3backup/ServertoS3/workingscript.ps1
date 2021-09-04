$results = Get-ChildItem -Path M:\MetaTrader5Backup\MainTrade  |

Where-Object {$_.LastWriteTime -lt (get-date).AddHours(-144)}

foreach ($i in $results)

{

$i = $i.Name

if ("base" -ne $i){

Write-Output "Uploading file "$i

aws s3 cp [DESTINATION-ON-LOCAL-]\$i [ARN-BUCKET-DESTINATION]$i --recursive

}

}

 

Read-Host -Prompt "Press Enter to exit"