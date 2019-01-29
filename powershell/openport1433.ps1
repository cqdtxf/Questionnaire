Write-host Enabling SQLServer default instance port 1433
 

New-NetFirewallRule -DisplayName "Allow inbound TCP Port 1433" –Direction inbound –LocalPort 1433 -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound TCP Port 1433" –Direction outbound –LocalPort 1433 -Protocol TCP -Action Allow
 