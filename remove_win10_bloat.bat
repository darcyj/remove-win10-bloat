@rem Remove Apps
PowerShell -Command "Get-AppxPackage *LenovoCompanion* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*LenovoCompanion*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *LenovoSettings* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*LenovoSettings*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*3DBuilder*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Getstarted*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*WindowsAlarms*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*bing*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*people*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppXProvisionedPackage *WindowsPhone* | Remove-AppXProvisionedPackage"

PowerShell -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*SkypeApp*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*windowscommunicationsapps*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *zune* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*zune*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *Sway* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Sway*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*CommsPhone*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*ConnectivityStore*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Microsoft.Messaging*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *Xbox* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*Xbox*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *WindowsFeedbackHub* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*WindowsFeedbackHub*"} | remove-appxprovisionedpackage –online"

PowerShell -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
PowerShell -Command "Get-appxprovisionedpackage –online | where-object {$_.packagename –like "*OneNote*"} | remove-appxprovisionedpackage –online"


@rem NOW JUST SOME TWEAKS
REM *** Show hidden files in Explorer ***
REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f

REM *** Show super hidden system files in Explorer ***
REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d 1 /f

REM *** Show file extensions in Explorer ***
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f

REM *** show leftover AppxPackages
PowerShell -Command "Get-AppXProvisionedPackage -Online | Select PackageName"
