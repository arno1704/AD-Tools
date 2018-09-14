$objSID = New-Object System.Security.Principal.SecurityIdentifier ("S-1-5-21-3477018782-3139031998-1455493525-39900")
$objUser = $objSID.Translate( [System.Security.Principal.NTAccount])
$objUser.Value 