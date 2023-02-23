$empathe = Invoke-WebRequest https://raw.githubusercontent.com/Barclay-McClay/EmpathE/main/EmpathE.ps1
Invoke-Expression $($empathe.Content)