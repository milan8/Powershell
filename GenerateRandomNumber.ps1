# Random Number - https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-random?view=powershell-6
for ($i=1;$i -le 100;$i++) {
      $employees = @(
      
      $randomnumber= Get-Random -Maximum 1000
      Write-Host "Writing line" $randomnumber

      )}