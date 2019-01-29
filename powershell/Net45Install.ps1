param(
    [Parameter(Position=1)][string]$InstallationFile     = $(Throw "Required parameter missing: InstallationFile")
   )
Start-Process -FilePath $InstallationFile