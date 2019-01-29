param(
    [Parameter(Position=1)][string]$registryPath     = $(Throw "Required parameter missing: serviceName"),
      )


$Name = "Company"

$value = "MCU"

IF(!(Test-Path $registryPath))

  {

    New-Item -Path $registryPath -Force | Out-Null

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    -PropertyType DWORD -Force | Out-Null}

 ELSE {

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    -PropertyType DWORD -Force | Out-Null}