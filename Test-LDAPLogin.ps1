 $Cred = Get-Credential 
 $Username = $Cred.username
 $Password = $Cred.GetNetworkCredential().password
 
 # Get current domain using logged-on user's credentials
 $CurrentDomain = "LDAP://" + ([ADSI]"").distinguishedName
 $Domain = New-Object System.DirectoryServices.DirectoryEntry($CurrentDomain,$Username,$Password)
 $DomainName = $Domain.name
 
 if ($Domain.name -eq $null)
 {
  write-host "Authentication failed for $Username - please verify your username and password." -ForegroundColor Red
 }
 else
 {
  write-host "The account $Username successfully authenticated against the domain: $DomainName" -ForegroundColor Green
 }
$Password = $null