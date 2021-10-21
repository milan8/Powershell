# Init PowerShell Gui
Add-Type -AssemblyName System.Windows.Forms
# Create a new form
$SampleForm                    = New-Object system.Windows.Forms.Form
# Define the size, title and background color
$SampleForm.ClientSize         = '500,300'
$SampleForm.text               = "PowerShell GUI Example"
$SampleForm.BackColor          = "#ffffff"


# Other elemtents
$Description                     = New-Object system.Windows.Forms.Label
$Description.text                = "Hello World"
$Description.Location  = New-Object System.Drawing.Point(0,10)
$Description.AutoSize = $true
$SampleForm.Controls.Add($Description)

# Display the form
[void]$SampleForm.ShowDialog()