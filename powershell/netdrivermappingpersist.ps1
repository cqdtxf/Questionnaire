param(
    [Parameter(Position=1)][string]$netdiver     = $(Throw "Required parameter missing: netdiver"),
      )
New-PSDrive -Name "S" -Root $netdiver -Persist -PSProvider "FileSystem"