$checkWinget = (Invoke-Expression "winget -v" | Out-Null )
if (-not($checkWinget)) {
    try {
		Write-host "Downloading Winget Package"
        $WebSource = 'https://aka.ms/getwinget'
        $LocalDestination = "$env:TEMP\WingetInstaller\"
        $AppPackage = 'Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'
        If (!(test-path $LocalDestination)) { New-Item -ItemType Directory -Force -Path $LocalDestination } 
        Start-BitsTransfer -Source "$WebSource" -Destination "$LocalDestination\$AppPackage" -TransferType Download -Verbose
        Add-AppxPackage $LocalDestination\$AppPackage -ErrorAction STOP -Verbose
        #Start-Process $LocalDestination\$AppPackage -ArgumentList /q 
        Start-Sleep -Milliseconds 100
        Write-Host Winget Installed 
    }
        catch {
        Write-host "ERROR OCCURED $_"

    }
    Finally{

        Remove-Item $LocalDestination -Recurse -Force -ErrorAction SilentlyContinue -Verbose

    }
}
else {      
    Write-Host "Winget Version $checkWinget is already installed" -ForegroundColor 'Green'
}   