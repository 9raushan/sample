$data=Get-Content -Path "C:\Users\raushan-kumar\OneDrive - HCL Technologies Ltd\Desktop\R.txt"
$output=$data|Select-String -Pattern 'Status' -SimpleMatch
$a=$output|Select-Object * -First 1
if($a.Line -like "Status=1"){
    Write-host "Scanner is active" -ForegroundColor "green"
    #Restart-computer
}else{
    Write-host "Scanner is not active" -ForegroundColor "red"
}