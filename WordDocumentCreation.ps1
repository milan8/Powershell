#Create a new instance/object of MS Word
$Word = New-Object -ComObject Word.Application

#Make the Word visible
$Word.Visible = $True

#Add a new document
$Document = $Word.Documents.Add()

#Create a reference to the current document so we can begin adding text
$Selection = $Word.Selection

#Add text Username and Date
$Selection.TypeText("My username is $($Env:USERNAME)$(Get-Date)")

# Add some text with new paragraphs in between.
$Selection.TypeParagraph()
$Selection.TypeText("This is on a new line!")
$Selection.TypeParagraph()
$Selection.TypeParagraph()
$Selection.TypeText("Yet another line to type on!")

# Save and quit
$Report = 'C:\PowerShell\MyFirstDocument.docx'
$Document.SaveAs([ref]$Report,[ref]$SaveFormat::wdFormatDocument)
$word.Quit()

# Clean up Com object
$null =
[System.Runtime.InteropServices.Marshal]::ReleaseComObject([System.__ComObject]$Word)
Remove-Variable Word