#Open URL in default browser using PowerShell
Start-Process "http://www.milantony.com/"
#Open URL in MicrosoftEdge using PowerShell
[system.Diagnostics.Process]::Start("msedge","http://www.milantony.com/")
#Open URL in Chrome using PowerShell
[system.Diagnostics.Process]::Start("chrome","http://www.milantony.com/"
#Open URL in Firefox using PowerShell
[system.Diagnostics.Process]::Start("firefox","http://www.milantony.com/")
#Open URL in Internet Explorer using PowerShell
[system.Diagnostics.Process]::Start("iexplore","http://www.milantony.com/")