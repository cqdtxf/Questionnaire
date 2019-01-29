param(
    [Parameter(Position=1)][string]$serviceName     = $(Throw "Required parameter missing: serviceName"),
    [Parameter(Position=2)][array]$targetServers    = $(Throw "Required parameter missing: targetServers"),
   )

if ((Get-Service -Name $serviceName -ComputerName $serverName -ErrorAction SilentlyContinue) -eq $null) {
        Write-Verbose "Service '$serviceName' is not installed on '$serverName'."
        $testResult = $false
    }
    else {
        Write-Verbose "Service '$serviceName' is installed on '$serverName'."
        $testResult = $true

if ($testResult) {
		$myservice = Get-Service -Name $serviceName -ComputerName $targetServer -ErrorAction Stop
        $startRequest = ($myservice.Status -eq "Running")

        Write-Host "startRequest = " $startRequest
		
		Write-Host "Service '$serviceName' is installed on '$targetServer'. Stopping it before deploying..."
        try {
            Stop-RemoteService $serviceName $targetServer
        }
        catch {
            # Trust that the called function will return a usable error message
            Throw $_
        }
    }
 else {
        Write-Host "Service '$serviceName' is not installed on '$targetServer'."
    }