#Sent email from installed and configure Outlook from Windows PowerShell
#create COM object named Outlook 
$Outlook = New-Object -ComObject Outlook.Application 
#create Outlook MailItem named Mail using CreateItem() method 
$Mail = $Outlook.CreateItem(0) 
#add properties as desired 
$Mail.To = "some@dude.com" 
#$Mail.To = "some@dude.com" 
$Mail.Subject = "Picka (づ｡◕‿‿◕｡)づ $PickaPicka"  
$Mail.Body = "$PickaPicka"
#send message 
$Mail.Send() 
#quit and cleanup 
$Outlook.Quit() 
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($Outlook) | Out-Null