﻿param(
    [Parameter(Mandatory,Position=0)]
    $SID 
)

$objSID = New-Object System.Security.Principal.SecurityIdentifier ($SID)
$objUser = $objSID.Translate( [System.Security.Principal.NTAccount])
$objUser.Value 