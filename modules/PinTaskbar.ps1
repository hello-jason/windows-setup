function Pin-Taskbar([string]$Item = "",[string]$Action = ""){
    $Shell = New-Object -ComObject "Shell.Application"
    $ItemParent = Split-Path -Path $Item -Parent
    $ItemLeaf = Split-Path -Path $Item -Leaf
    $Folder = $Shell.NameSpace($ItemParent)
    $ItemObject = $Folder.ParseName($ItemLeaf)
    $Verbs = $ItemObject.Verbs()
    switch($Action){
        "Pin"   {$Verb = Where-Object -Property Name -EQ "Pin to Tas&kbar"}
        "Unpin" {$Verb = $Verbs | Where-Object -Property Name -EQ "Unpin from Tas&kbar"}
        default {Write-Error -Message "Invalid action, should be Pin or Unpin" -ErrorAction Stop}
    }
    if($Verb -eq $null){
        Write-Error -Message "That action is not currently available on this item" -ErrorAction Stop
    } else {
        $Result = $Verb.DoIt()
    }
}

Pin-Taskbar -Item "C:\Windows\notepad.exe" -Action Pin