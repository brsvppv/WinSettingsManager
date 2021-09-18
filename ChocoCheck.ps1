try {
    $checkChoco = (Invoke-Expression "choco  -v")
    if (-not($checkChoco)) {
        Write-Host "Chocolyte Version $checkChoco is already installed" -ForegroundColor 'Magenta'
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    }
    else {
              
        Write-Host "Chocolyte Version $checkChoco is already installed"
    }
}
catch {
        [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
}