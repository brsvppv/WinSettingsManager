
$checkWinget = (Invoke-Expression "winget -v" | Out-Null )
if (-not($checkWinget)) {
    try {
        $WebSource = 'https://aka.ms/getwinget'
        $LocalDestination = "$env:TEMP\WingetInstaller\"
        $AppPackage = 'Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'
        If (!(test-path $LocalDestination)) { New-Item -ItemType Directory -Force -Path $LocalDestination } 
        Start-BitsTransfer -Source "$WebSource" -Destination "$LocalDestination\$AppPackage" -TransferType Download -Verbose
        #Add-AppxPackage $LocalDestination\$AppPackage
        Start-Process $LocalDestination\$AppPackage -ErrorAction Stop
        $PricessID = (Get-Process AppInstaller).Id
        $stopwatch = [system.diagnostics.stopwatch]::StartNew()
        do {
            Write-Output -InputObject 'Installation in Progress'
            $SetupPath = Get-Process -Id $PricessID -ErrorAction SilentlyContinue
            if ($SetupPath) {
                $CurrentTime = $stopwatch.Elapsed
                write-host $([string]::Format("`rTime: {0:d2}:{1:d2}:{2:d2}",
                        $CurrentTime.hours,
                        $CurrentTime.minutes,
                        $CurrentTime.seconds)) -ForegroundColor Magenta
                ## Wait a specific interval
                Start-Sleep -Seconds 1
                ## Check the time
                $totalSecs = [math]::Round($timer.Elapsed.TotalSeconds, 0)
            }
        }until (-not $SetupPath)
    }
    catch {
        Write-host "ERROR OCCURED $_"

    }
    Finally {

        Remove-Item $LocalDestination -Recurse -Force -ErrorAction SilentlyContinue

    }
}