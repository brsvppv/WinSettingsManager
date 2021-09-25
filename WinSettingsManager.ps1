Set-ExecutionPolicy Bypass -Scope Process -Force; [Net.ServicePointManager]::SecurityProtocol = 'Tls12'
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process PowerShell -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
    exit;
}

#Get-TimeZone -ListAvailable | Select-Object{$_.id,$_.DisplayName}
[Net.ServicePointManager]::SecurityProtocol = 'Tls12'
[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][Reflection.Assembly]::LoadWithPartialName('System.Speech')
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Speech
Add-Type -AssemblyName PresentationCore, PresentationFramework

[xml]$XAML = @"
<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        
        Title="Win Settings Manager" Height="460" Width="655" ResizeMode="NoResize" WindowStartupLocation="CenterScreen">
        <Grid>
            <ComboBox Name="cbxPackageManager" HorizontalAlignment="Left" Margin="21,2,0,0" VerticalAlignment="Top" Width="180" SelectedIndex="0" Background="Black">
                <ComboBoxItem Content="Select Package Manager"/>
                <ComboBoxItem Content="Winget"/>
                <ComboBoxItem Content="Chocolyte"/>
            </ComboBox>
            <ComboBox Name="cbxBrowsers" HorizontalAlignment="Left" Margin="20,59,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select Browser"/>
                <ComboBoxItem Content="Google Chrome"/>
                <ComboBoxItem Content="Opera Browser"/>
                <ComboBoxItem Content="Mozilla Firefox"/>
            </ComboBox>
            <ComboBox Name="cbxPDFReaders" HorizontalAlignment="Left" Margin="20,89,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select PDF Reader"/>
                <ComboBoxItem Content="Adobe Acrobat"/>
                <ComboBoxItem Content="Sumatra PDF"/>
                <ComboBoxItem Content="Foxit Reader"/>
            </ComboBox>
            <ComboBox Name="cbxChatApps" HorizontalAlignment="Left" Margin="20,119,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select Chat App"/>
                <ComboBoxItem Content="Microsoft Teams"/>
                <ComboBoxItem Content="Microsoft Skype"/>
                <ComboBoxItem Content="Zoom"/>
                <ComboBoxItem Content="Telegram"/>
                <ComboBoxItem Content="Signal"/>
                <ComboBoxItem Content="Viber"/>
            </ComboBox>
            <ComboBox Name="cbxEditorApps" HorizontalAlignment="Left" Margin="20,149,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select Text Editor"/>
                <ComboBoxItem Content="Notepad++"/>
                <ComboBoxItem Content="Atom"/>
                <ComboBoxItem Content="Microsoft Office"/>
            </ComboBox>
            <ComboBox Name="cbxImageViwers" HorizontalAlignment="Left" Margin="20,179,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select Image Viewer"/>
                <ComboBoxItem Content="Flameshot"/>
                <ComboBoxItem Content="GIMP"/>
                <ComboBoxItem Content="IrfanView"/>
                <ComboBoxItem Content="ShareX"/>
            </ComboBox>
            <ComboBox Name="cbxDevTools" HorizontalAlignment="Left" Margin="20,208,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select Dev Tools"/>
                <ComboBoxItem Content="Visual Studio Code"/>
                <ComboBoxItem Content="PyCharm"/>
                <ComboBoxItem Content="VS 2019 Enterprise"/>
                <ComboBoxItem Content="Azure Data Studio"/>
                <ComboBoxItem Content="SQL Management Studio"/>
                <ComboBoxItem Content="WinMerge"/>
                <ComboBoxItem Content="Git"/>
                <ComboBoxItem Content="GitCredManager"/>
                <ComboBoxItem Content="Docker Desktop"/>
                
            </ComboBox>
            <ComboBox Name="cbxArchiveApps" HorizontalAlignment="Left" Margin="20,239,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select Archive App"/>
                <ComboBoxItem Content="7 Zip Manager"/>
                <ComboBoxItem Content="Bandizip"/>
                <ComboBoxItem Content="PeaZip"/>
            </ComboBox>
            <ComboBox Name="cbxFtpApps" HorizontalAlignment="Left" Margin="20,269,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select FTP App"/>
                <ComboBoxItem Content="FileZilla"/>
                <ComboBoxItem Content="WinSCP"/>
                <ComboBoxItem Content="Cyberduck"/>
            </ComboBox>
            <ComboBox Name="cbxVideoApps" HorizontalAlignment="Left" Margin="20,298,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select Video Player"/>
                <ComboBoxItem Content="VLC"/>
                <ComboBoxItem Content="MediaMonkey"/>
                <ComboBoxItem Content="Media Player Classic"/>
            </ComboBox>
            <ComboBox Name="cbxPassMgr" HorizontalAlignment="Left" Margin="20,328,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select Pass Manager"/>
                <ComboBoxItem Content="KeePassXC"/>
                <ComboBoxItem Content="KeeWeb"/>
                <ComboBoxItem Content="LastPass"/>
                <ComboBoxItem Content="Bitwarden"/>
                <ComboBoxItem Content="1Password"/>
            </ComboBox>
            <ComboBox Name="cbxVPN" HorizontalAlignment="Left" Margin="20,358,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select VPN"/>
                <ComboBoxItem Content="OpenVPNTechnologies"/>
                <ComboBoxItem Content="WireGuard"/>
                <ComboBoxItem Content="FortiClient VPN"/> 
            </ComboBox>
            <ComboBox Name="cbxSelectSystemApps" HorizontalAlignment="Left" Margin="20,388,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select System Package "/>
                <ComboBoxItem Content="Windows Terminal"/>
                <ComboBoxItem Content="GnuPG Encryption"/>
                <ComboBoxItem Content="Gpg4win"/>
                <ComboBoxItem Content="Everything"/>
                <ComboBoxItem Content="WizTree"/>
                <ComboBoxItem Content="Lenovo System Update"/>
                <ComboBoxItem Content="Intel Driver Assistant"/>
    
            </ComboBox>
            <ComboBox Name="cbxTelemetry" HorizontalAlignment="Left" Margin="438,59,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableTelemetry"/>
                <ComboBoxItem Content="DisableTelemetry"/>
            </ComboBox>
            <ComboBox Name="cbxActivityHistory" HorizontalAlignment="Left" Margin="438,89,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableActivityHistory"/>
                <ComboBoxItem Content="DisableActivityHistory"/>
            </ComboBox>
            <ComboBox Name="cbxBackgroundApps" HorizontalAlignment="Left" Margin="438,119,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableBackgroundApps"/>
                <ComboBoxItem Content="DisableBackgroundApps"/>
            </ComboBox>
            <ComboBox Name="cbxLocationTracking" HorizontalAlignment="Left" Margin="437,149,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableLocationTracking"/>
                <ComboBoxItem Content="DisableLocationTracking"/>
            </ComboBox>
            <ComboBox Name="cbxAdvertisingID" HorizontalAlignment="Left" Margin="437,179,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableAdvertisingID"/>
                <ComboBoxItem Content="DisableAdvertisingID"/>
            </ComboBox>
            <ComboBox Name="cbxTailoredExperiences" HorizontalAlignment="Left" Margin="437,209,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableTailoredExperiences"/>
                <ComboBoxItem Content="DisableTailoredExperiences"/>
            </ComboBox>
            <ComboBox Name="cbxVisualSettings" HorizontalAlignment="Left" Margin="437,240,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="SetVisualFXAppearance"/>
                <ComboBoxItem Content="SetVisualFXPerformance"/>
            </ComboBox>
            <ComboBox Name="cbxThumbsDB" HorizontalAlignment="Left" Margin="437,269,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableThumbsDB"/>
                <ComboBoxItem Content="DisableThumbsDB"/>
            </ComboBox>
            <ComboBox Name="cbxThumbnails" HorizontalAlignment="Left" Margin="437,299,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableThumbnails"/>
                <ComboBoxItem Content="DisableThumbnails"/>
            </ComboBox>
            <ComboBox Name="cbxCortana" HorizontalAlignment="Left" Margin="437,328,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableCortana"/>
                <ComboBoxItem Content="DisableCortana"/>
            </ComboBox>
            <ComboBox Name="cbxDarkMode" HorizontalAlignment="Left" Margin="437,358,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="SELECT"/>
                <ComboBoxItem Content="EnableDarkMode"/>
                <ComboBoxItem Content="DisableDarkMode"/>
            </ComboBox>
            <ComboBox Name="cbxRecent" HorizontalAlignment="Left" Margin="437,388,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select"/>
                <ComboBoxItem Content="ShowRecentShortcuts"/>
                <ComboBoxItem Content="HideRecentShortcuts"/>
            </ComboBox>
            <Button Name="btnBrowserInstall" Content=">" HorizontalAlignment="Left" Margin="180,59,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnPdfInstall" Content=">" HorizontalAlignment="Left" Margin="180,89,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnChatInstall" Content=">" HorizontalAlignment="Left" Margin="180,119,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnTextEditorInstall" Content=">" HorizontalAlignment="Left" Margin="180,149,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnImageInstall" Content=">" HorizontalAlignment="Left" Margin="180,179,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnDevToolsInstall" Content=">" HorizontalAlignment="Left" Margin="180,208,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnArhiveAppInstall" Content=">" HorizontalAlignment="Left" Margin="180,239,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnFtpAppInstall" Content=">" HorizontalAlignment="Left" Margin="180,269,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnVideoInstall" Content=">" HorizontalAlignment="Left" Margin="180,298,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnPassMgrInstall" Content=">" HorizontalAlignment="Left" Margin="180,328,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnVpnInstall" Content=">" HorizontalAlignment="Left" Margin="180,358,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnSysInstalls" Content=">" HorizontalAlignment="Left" Margin="180,388,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnTelemetry" Content=">" HorizontalAlignment="Left" Margin="597,59,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnHistory" Content=">" HorizontalAlignment="Left" Margin="597,89,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnBackgroundApps" Content=">" HorizontalAlignment="Left" Margin="597,119,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnLocationTracking" Content=">" HorizontalAlignment="Left" Margin="597,149,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnAdvertisingID" Content=">" HorizontalAlignment="Left" Margin="597,179,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnTailoredExp" Content=">" HorizontalAlignment="Left" Margin="597,209,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnVFX" Content=">" HorizontalAlignment="Left" Margin="597,240,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnThumbsDB" Content=">" HorizontalAlignment="Left" Margin="597,269,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnThumbnails" Content=">" HorizontalAlignment="Left" Margin="597,299,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnCortana" Content=">" HorizontalAlignment="Left" Margin="597,328,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnDarkMode" Content=">" HorizontalAlignment="Left" Margin="597,358,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnRecent" Content=">" HorizontalAlignment="Left" Margin="597,388,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnCreateRP" Content="Create Restore Point" HorizontalAlignment="Left" Margin="20,25,0,0" VerticalAlignment="Top" Width="90" Height="20" FontSize="10" FontFamily="Times New Roman"/>
            <Button Name="btnSystemSettings" Content="System Settings  " HorizontalAlignment="Left" Margin="111,25,0,0" VerticalAlignment="Top" Width="90" Height="20" FontSize="10" FontFamily="Times New Roman"/>
            <Button Name="btnCertImport" Content="ImportCertificates" HorizontalAlignment="Left" Margin="216,59,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="BTN1" Content="1" HorizontalAlignment="Left" Margin="216,89,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="BTN2" Content="2" HorizontalAlignment="Left" Margin="216,119,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction4" Content="3" HorizontalAlignment="Left" Margin="216,149,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction5" Content="4" HorizontalAlignment="Left" Margin="216,179,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction6" Content="5" HorizontalAlignment="Left" Margin="216,209,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction7" Content="6" HorizontalAlignment="Left" Margin="216,240,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction8" Content="7" HorizontalAlignment="Left" Margin="216,269,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction9" Content="8" HorizontalAlignment="Left" Margin="216,299,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnLightShot" Content="9" HorizontalAlignment="Left" Margin="216,328,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnInstallAnyconnect" Content="10" HorizontalAlignment="Left" Margin="216,358,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnInstNet35" Content="DotNetFrame 3.5" HorizontalAlignment="Left" Margin="216,388,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnUnpinStartMenu" Content="UnpinStartMenu" HorizontalAlignment="Left" Margin="325,59,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnUnpinTaskBar" Content="UnpinTaskBar" HorizontalAlignment="Left" Margin="325,89,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction12" Content="1" HorizontalAlignment="Left" Margin="325,119,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction13" Content="2" HorizontalAlignment="Left" Margin="325,149,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction14" Content="3" HorizontalAlignment="Left" Margin="325,179,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction15" Content="4" HorizontalAlignment="Left" Margin="325,209,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction16" Content="5" HorizontalAlignment="Left" Margin="325,240,0,0" VerticalAlignment="Top" Width="100" Height="22" />
            <Button Name="btnPerformAction17" Content="6" HorizontalAlignment="Left" Margin="325,269,0,0" VerticalAlignment="Top" Width="100" Height="22" />
            <Button Name="btnPerformAction18" Content="7" HorizontalAlignment="Left" Margin="325,299,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnBulkInstall" Content="Bulk-Install" HorizontalAlignment="Left" Margin="325,328,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnInstallAll" Content="Install-All" HorizontalAlignment="Left" Margin="325,358,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnUninstallApps" Content="Uninstall-WSApps>" HorizontalAlignment="Left" Margin="325,388,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <!--  <CheckBox Name="chbWinget" Content="Winget" HorizontalAlignment="Left" Margin="225,5,0,0" VerticalAlignment="Top"/> -->
            <!--<CheckBox Name="chbChocolyte" Content="Chocolyte" Style="{StaticResource {x:Type ToggleButton}}" HorizontalAlignment="Left" Margin="225,25,0,0" VerticalAlignment="Top"/> -->
            <!-- <CheckBox Name="chbSettings" Content="Settings" Style="{StaticResource {x:Type ToggleButton}}" HorizontalAlignment="Left" Margin="111,25,0,0" VerticalAlignment="Top"  Width="90" Height="20" FontSize="12" FontFamily="Times New Roman"/> -->
            <Label Name="lblCurTime" Content="" HorizontalAlignment="Right" Margin="0,0,0,0" VerticalAlignment="Top" Width="150" Height="50" FontSize="34" FontFamily="Times New Roman"/>
            <Label Name="lblTitle" Content="WinSettings" HorizontalAlignment="Center" Margin="0,0,0,0" VerticalAlignment="Top" Width="200" Height="50" FontSize="34" FontFamily="Times New Roman"/>


        </Grid>
    </Window>
"@
#Read XAML
$reader = (New-Object System.Xml.XmlNodeReader $xaml) 
try { $MainForm = [Windows.Markup.XamlReader]::Load( $reader ) }
catch { Write-Host "Unable to load Windows.Markup.XamlReader"; exit }
# Store Form Objects In PowerShell
$xaml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name ($_.Name) -Value $MainForm.FindName($_.Name) }

$timer = New-Object System.Windows.Forms.Timer

$timer_Tick = {

    $lblCurTime.Content = "$([string]::Format("{0:d2}:{1:d2}:{2:d2}",$((Get-Date).Hour),$((Get-Date).Minute),$((Get-Date).Second)))"
}
$timer.Enabled = $True
$timer.Interval = 1
$timer.add_Tick($timer_Tick)
$global:PackageArray = $null
$global:packageMgr = $null
#$MainForm.Topmost = $True
$sysAppPackage = $null
$InstNotification = "Installing" + $sysAppPackage.PackageName

#Set-ExecutionPolicy Bypass -Scope Process -Force;
##$orig = [Net.ServicePointManager]::SecurityProtocol
#write-host $orig -ForegroundColor Yellow

Function RequireAdmin {
    If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
        Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
        Exit
    }
}
Function WaitForKey {
    Write-Host "Press any key to continue..."
    [Console]::ReadKey($true) | Out-Null 
}
function ImportCertFromDir {

    [xml]$XAML = @"
<Window
xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
     
        Title="Select Certificates Directory" Height="140" Width="300" ResizeMode="NoResize" ShowInTaskbar="True" WindowStartupLocation="CenterScreen">
        <Grid Background="{DynamicResource {x:Static SystemColors.WindowBrushKey}}" Margin="0,0,0,0" Height="140" VerticalAlignment="Top" HorizontalAlignment="Left" Width="300">
        <TextBox Name="txtCertDir" HorizontalAlignment="Left" Height="20" Margin="26,25,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="231" FontSize="11" IsReadOnly="true"/>
        <Button Name="btnSelectCertDirectory" Content="..." HorizontalAlignment="Left" Margin="255,25,0,0" VerticalAlignment="Top" Width="20" Height="20"/>
        <Button Name="btnPerformAction" Content="Perform Action" Margin="27,50,0,0" VerticalAlignment="Top" Height="23" HorizontalAlignment="Left" Width="248"/>
    </Grid>
</Window>
"@
    #Read XAML
    $reader = (New-Object System.Xml.XmlNodeReader $xaml) 
    try { $Form = [Windows.Markup.XamlReader]::Load( $reader ) }
    catch { Write-Host "Unable to load Windows.Markup.XamlReader"; exit }
    # Store Form Objects In PowerShell
    $xaml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name) }
    $certdirectroy
    function Find-Folders {
        [Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null
        [System.Windows.Forms.Application]::EnableVisualStyles()
        $browse = New-Object System.Windows.Forms.FolderBrowserDialog
        $browse.SelectedPath = "C:\"
        $browse.ShowNewFolderButton = $false
        $browse.Description = "Select a directory"

        $loop = $true
        while ($loop) {
            if ($browse.ShowDialog() -eq "OK") {
                $loop = $false
		
                #Insert your script here
		
            }
            else {
                $res = [System.Windows.Forms.MessageBox]::Show("You clicked Cancel. Would you like to try again or exit?", "Select a location", [System.Windows.Forms.MessageBoxButtons]::YesNo)
                if ($res -eq "No") {
                    #Ends script
                    return
                }
            }
        }
        $browse.SelectedPath
        $txtCertDir.Text = $browse.SelectedPath
        $browse.Dispose()
    
    }
    $btnSelectCertDirectory.Add_click( {
            Find-Folders
        })
    $btnPerformAction.Add_click( {
            $certdirectroy = $txtCertDir.Text
            Try {
                $boolBuildExist = [string]::IsNullOrEmpty($certdirectroy) 
                if ($boolBuildExist -eq $false) {
                    $listitmes = @()
                
                    $listitmes = Get-ChildItem -Path "$certdirectroy\*" -Include *.cer
                
                    if ($listitmes) {
                        foreach ($item in $listitmes) {
                            Write-Host "~~~~~~~~~~~ $item ~~~~~~~~~~~"
                            #
                            Import-Certificate -FilePath "$item" -CertStoreLocation "Cert:\LocalMachine\Root" -Verbose
                            
                        }
                        [System.Windows.MessageBox]::Show("Import Finished", 'Info', 'OK', 'Information')
                    } 
                    else {
                        Write-Host 'No Certificates found in the selected directory arrays' -ForegroundColor Yellow
                    }
                }
                else {
                    [System.Windows.MessageBox]::Show("Select Directory", 'Info', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("IMPORT ERROR:  $_", 'Error', 'OK', 'Error')
            }
            
        })
        
    $Form.ShowDialog() | out-null
}
Function DisableThumbsDB {
    Write-Host "Disabling creation of Thumbs.db..."
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbnailCache" -Type DWord -Value 1 -Verbose
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbsDBOnNetworkFolders" -Type DWord -Value 1 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function EnableThumbsDB {
    Write-Host "Enable creation of Thumbs.db..."
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbnailCache" -ErrorAction SilentlyContinue -Verbose 
    Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbsDBOnNetworkFolders" -ErrorAction SilentlyContinue -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function DisableThumbnails {
    Write-Host "Disabling thumbnails..."
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "IconsOnly" -Type DWord -Value 1 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function EnableThumbnails {
    Write-Host "Enabling thumbnails..."
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "IconsOnly" -Type DWord -Value 0 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function SetVisualFXPerformance {
    Write-Host "Adjusting visual effects for performance..."
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0 
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 0 
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144, 18, 3, 128, 16, 0, 0, 0))
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0 
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0-Verbose
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0 -Verbose
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0 -Verbose
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3 -Verbose
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0  -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
} 
Function SetVisualFXAppearance {
    Write-Host "Adjusting visual effects for appearance..." 
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 1 
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 400 
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](158, 30, 7, 128, 18, 0, 0, 0)) 
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 1 
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 1 -Verbose
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 1 -Verbose
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 1 -Verbose
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3 -Verbose
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 1 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function EnableTelemetry {
    Write-Host "Enable Telemetry ..."
    Enable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
    Enable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
    Enable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
    Enable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
    Enable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
    Enable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3 -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3 -Verbose
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -ErrorAction SilentlyContinue -Verbose
    write-host "Finished" -ForegroundColor Magenta
}
Function DisableTelemetry {
    Write-Host "Disable Telemetry..."
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"  | Out-Null 
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
    Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0 -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0 -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0 -Verbose
    write-host "Finished" -ForegroundColor Magenta

}
Function EnableActivityHistory {
    Write-Host "Enable Activity History..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -ErrorAction SilentlyContinue -Verbose
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -ErrorAction SilentlyContinue -Verbose
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -ErrorAction SilentlyContinue -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function DisableActivityHistory {
    Write-Host "Disable Activity History..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0 -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0 -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function EnableBackgroundApps {
    Write-Host "Enable Background Apps. .."
    Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" | ForEach-Object {
        Remove-ItemProperty -Path $_.PsPath -Name "Disabled" -ErrorAction SilentlyContinue -Verbose
        Remove-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -ErrorAction SilentlyContinue -Verbose
        Write-Host "Finished" -ForegroundColor Magenta

    }
}
Function DisableBackgroundApps {
    Write-Host "Disable Background Apps..."
    Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach-Object {
        Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1 -Verbose
        Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1 -Verbose
        Write-Host "Finished" -ForegroundColor Magenta

    }
}
Function DisableLocationTracking {
    Write-Host "Disabling Location Tracking..."
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny" -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0 -Verbose
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta

}
Function EnableLocationTracking {
    Write-Host "Enabling Location Tracking..."
    If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
        New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Allow" -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 1 -Verbose
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 1 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta

}
Function DisableTailoredExperiences {
    Write-Host "Disabling Tailored Experiences..."
    If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
        New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function EnableTailoredExperiences {
    Write-Host "Enabling Tailored Experiences..."
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -ErrorAction SilentlyContinue -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function DisableAdvertisingID {
    Write-Host "Disabling Advertising ID..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function EnableAdvertisingID {
    Write-Host "Enabling Advertising ID..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -ErrorAction SilentlyContinue -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function DisableCortana {
    Write-Host "Disabling Cortana..."
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -Type DWord -Value 0 -Verbose
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 1 -Verbose
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 1 -Verbose
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -Type DWord -Value 0 -Verbose
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Type DWord -Value 0 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function EnableCortana {
    Write-Host "Enabling Cortana..."
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -ErrorAction SilentlyContinue -Verbose
    If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
        New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 0 -Verbose
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 0 -Verbose
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -ErrorAction SilentlyContinue -Verbose
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -ErrorAction SilentlyContinue -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function DisableSharingMappedDrives {
    Write-Host "Disabling sharing mapped drives between users..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLinkedConnections" -ErrorAction SilentlyContinue -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function EnableSharingMappedDrives {
    Write-Host "Enabling sharing mapped drives between users..."
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLinkedConnections" -Type DWord -Value 1 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function EnableDarkMode {
    Write-Host "Enabling Dark Mode"
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function DisableDarkMode {
    Write-Host "Disabling Dark Mode"
    Remove-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
Function DefaultUpdates {
    Write-Host "Enabling driver offering through Windows Update..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue -Verbose
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -ErrorAction SilentlyContinue -Verbose
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -ErrorAction SilentlyContinue -Verbose
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -ErrorAction SilentlyContinue -Verbose
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue -Verbose
    Write-Host "Enabling Windows Update automatic restart..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -ErrorAction SilentlyContinue -Verbose
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue -Verbose
    Write-Host "Enabled drivers through Windows Update"
    Write-Host "Finished" -ForegroundColor Magenta
}
Function SecurityUpdates {
    Write-Host "Disabling driver offering through Windows Update..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1 -Verbose
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1 -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -Type DWord -Value 1 -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0 -Verbose
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1 -Verbose
    Write-Host "Disabling Windows Update automatic restart..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1 -Verbose
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0 -Verbose
    Write-Host "Disabled driver offering through Windows Update"
    Write-Host "Finished" -ForegroundColor Magenta
}
function UninstallWinApps {
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $false)]
        [switch]
        $ForAllUsers
    )
    $UncheckedAppPackages = @(
		
       
        "AppUp.IntelGraphicsExperience",
        "Microsoft.MicrosoftStickyNotes",
        "Microsoft.ScreenSketch",
        "Microsoft.Windows.Photos",
        "AdvancedMicroDevicesInc*",
        "AppUp.IntelGraphicsControlPanel",
        "Microsoft.Photos.MediaEngineDLC",
        "Microsoft.GamingServices",
        "Microsoft.Xbox.TCUI",
        "Microsoft.XboxSpeechToTextOverlay",
        "Microsoft.XboxGamingOverlay",
        "Microsoft.XboxGameOverlay",
        "Microsoft.XboxApp",
        "Microsoft.HEVCVideoExtension",
        "Microsoft.WindowsCalculator",
        "Microsoft.WindowsCamera",
        "Microsoft.XboxIdentityProvider",
        "Microsoft.GamingApp",    
        "NVIDIACorp.NVIDIAControlPanel",
        "RealtekSemiconductorCorp.RealtekAudioControl"
    )

    $ExcludedPackages = @(
        "Microsoft.DesktopAppInstaller",
        "Microsoft.StorePurchaseApp",
        "Microsoft.WindowsStore",
        "Microsoft.WindowsTerminal",
        "Microsoft.WindowsTerminalPreview",
        "Microsoft.WebMediaExtensions"
    )

    [xml]$XAML = '
	<Window
		xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
		xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
		Name="Window"
		MinHeight="400" MinWidth="415"
		SizeToContent="WidthAndHeight" WindowStartupLocation="CenterScreen"
		TextOptions.TextFormattingMode="Display" SnapsToDevicePixels="True"
		FontFamily="Tahoma" FontSize="15" ShowInTaskbar="True">
		<Window.Resources>
			<Style TargetType="StackPanel">
				<Setter Property="Orientation" Value="Horizontal"/>
				<Setter Property="VerticalAlignment" Value="Top"/>
			</Style>
			<Style TargetType="CheckBox">
				<Setter Property="Margin" Value="10, 12, 10, 10"/>
				<Setter Property="IsChecked" Value="True"/>
			</Style>
			<Style TargetType="TextBlock">
				<Setter Property="Margin" Value="0, 10, 10, 10"/>
			</Style>
			<Style TargetType="Button">
				<Setter Property="Margin" Value="20"/>
				<Setter Property="Padding" Value="10"/>
				<Setter Property="IsEnabled" Value="False"/>
			</Style>
			<Style TargetType="Border">
				<Setter Property="Grid.Row" Value="1"/>
				<Setter Property="CornerRadius" Value="0"/>
				<Setter Property="BorderThickness" Value="0, 1, 0, 1"/>
				<Setter Property="BorderBrush" Value="#000000"/>
			</Style>
			<Style TargetType="ScrollViewer">
				<Setter Property="HorizontalScrollBarVisibility" Value="Disabled"/>
				<Setter Property="BorderBrush" Value="#000000"/>
				<Setter Property="BorderThickness" Value="0, 1, 0, 1"/>
			</Style>
		</Window.Resources>
		<Grid>
			<Grid.RowDefinitions>
				<RowDefinition Height="Auto"/>
				<RowDefinition Height="*"/>
				<RowDefinition Height="Auto"/>
			</Grid.RowDefinitions>
			<Grid Grid.Row="0">
				<Grid.ColumnDefinitions>
					<ColumnDefinition Width="*"/>
					<ColumnDefinition Width="*"/>
				</Grid.ColumnDefinitions>
				<StackPanel Name="PanelSelectAll" Grid.Column="0" HorizontalAlignment="Left">
					<CheckBox Name="CheckBoxSelectAll" IsChecked="False"/>
					<TextBlock Name="TextBlockSelectAll" Margin="10,10, 0, 10"/>
				</StackPanel>
				<StackPanel Name="PanelRemoveForAll" Grid.Column="1" HorizontalAlignment="Right">
					<TextBlock Name="TextBlockRemoveForAll" Margin="10,10, 0, 10"/>
					<CheckBox Name="ChkBoxForAllUsesrs" IsChecked="False"/>
				</StackPanel>
			</Grid>
			<Border>
				<ScrollViewer>
					<StackPanel Name="PanelContainer" Orientation="Vertical"/>
				</ScrollViewer>
			</Border>
			<Button Name="ButtonUninstall" Content="Action Button" Grid.Row="2"/>
		</Grid>
	</Window>
	'

    $Reader = (New-Object -TypeName System.Xml.XmlNodeReader -ArgumentList $XAML)
    $Form = [Windows.Markup.XamlReader]::Load($Reader)
    $XAML.SelectNodes("//*[@*[contains(translate(name(.),'n','N'),'Name')]]") | ForEach-Object -Process {
        Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)
    }

    $Window.Title = "Uninstall Windows Applications"
    $ButtonUninstall.Content = "Select AppPackages"
    $TextBlockRemoveForAll.Text = "Remove For All Users"
    $TextBlockSelectAll.Text = "Select All"

    $ButtonUninstall.Add_Click( { ButtonUninstallClick })
    $ChkBoxForAllUsesrs.Add_Click( { ChkBoxForAllUsesrsClick })
    $CheckBoxSelectAll.Add_Click( { CheckBoxSelectAllClick })

    function GetAppBundle {
        [CmdletBinding()]
        param
        (
            [string[]]
            $Exclude,

            [switch]
            $AllUsers
        )

        $AppPackages = Get-AppxPackage -PackageTypeFilter Bundle -AllUsers:$AllUsers | Where-Object -FilterScript { $_.Name -notin $ExcludedPackages }
        $AppPackagesIDs = [Windows.Management.Deployment.PackageManager, Windows.Web, ContentType = WindowsRuntime]::new().FindPackages() | Select-Object -Property DisplayName -ExpandProperty Id | Select-Object -Property Name, DisplayName

        foreach ($AppxPackage in $AppPackages) {
            $PackageId = $AppPackagesIDs | Where-Object -FilterScript { $_.Name -eq $AppxPackage.Name }

            if (-not $PackageId) {
                continue
            }

            [PSCustomObject]@{
                Name            = $AppxPackage.Name
                PackageFullName = $AppxPackage.PackageFullName
                DisplayName     = $PackageId.DisplayName
            }
        }
    }

    function AddControl {
        [CmdletBinding()]
        param
        (
            [Parameter(
                Mandatory = $true,
                ValueFromPipeline = $true
            )]
            [ValidateNotNull()]
            [PSCustomObject[]]
            $Packages
        )

        process {
            foreach ($Package in $Packages) {
                $CheckBox = New-Object -TypeName System.Windows.Controls.CheckBox
                $CheckBox.Tag = $Package.PackageFullName

                $TextBlock = New-Object -TypeName System.Windows.Controls.TextBlock

                if ($Package.DisplayName) {
                    $TextBlock.Text = $Package.DisplayName
                }
                else {
                    $TextBlock.Text = $Package.Name
                }

                $StackPanel = New-Object -TypeName System.Windows.Controls.StackPanel
                $StackPanel.Children.Add($CheckBox) | Out-Null
                $StackPanel.Children.Add($TextBlock) | Out-Null

                $PanelContainer.Children.Add($StackPanel) | Out-Null

                if ($UncheckedAppPackages.Contains($Package.Name)) {
                    $CheckBox.IsChecked = $false
                }
                else {
                    $CheckBox.IsChecked = $true
                    $PackagesToRemove.Add($Package.PackageFullName)
                }

                $CheckBox.Add_Click( { CheckBoxClick })
            }
        }
    }
    function ChkBoxForAllUsesrsClick {
        $PanelContainer.Children.RemoveRange(0, $PanelContainer.Children.Count)
        $PackagesToRemove.Clear()
        $AppPackages = GetAppBundle -Exclude $ExcludedPackages -AllUsers:$ChkBoxForAllUsesrs.IsChecked
        $AppPackages | AddControl

        btnUnistallState
    }

    function ButtonUninstallClick {

        $Window.Close() | Out-Null

        # If Xbox Game Bar is selected to uninstall stop its' processes
        if ($PackagesToRemove -match "Microsoft.XboxGamingOverlay") {
            Get-Process -Name GameBar, GameBarFTServer -ErrorAction Ignore | Stop-Process -Force
        }

        $PackagesToRemove | Remove-AppxPackage -AllUsers:$ChkBoxForAllUsesrs.IsChecked -Verbose
    }

    function CheckBoxClick {
        $CheckBox = $_.Source

        if ($CheckBox.IsChecked) {
            $PackagesToRemove.Add($CheckBox.Tag) | Out-Null
        }
        else {
            $PackagesToRemove.Remove($CheckBox.Tag)
        }

        btnUnistallState
    }

    function CheckBoxSelectAllClick {
        $CheckBox = $_.Source

        if ($CheckBox.IsChecked) {
            $PackagesToRemove.Clear()

            foreach ($Item in $PanelContainer.Children.Children) {
                if ($Item -is [System.Windows.Controls.CheckBox]) {
                    $Item.IsChecked = $true
                    $PackagesToRemove.Add($Item.Tag)
                }
            }
        }
        else {
            $PackagesToRemove.Clear()

            foreach ($Item in $PanelContainer.Children.Children) {
                if ($Item -is [System.Windows.Controls.CheckBox]) {
                    $Item.IsChecked = $false
                }
            }
        }

        btnUnistallState
    }

    function btnUnistallState {
        if ($PackagesToRemove.Count -gt 0) {
            $ButtonUninstall.IsEnabled = $true
            $ButtonUninstall.Content = "Uninstall Packages"
        }
        else {
            $ButtonUninstall.IsEnabled = $false
            $ButtonUninstall.Content = "Select AppPackages"

        }
    }

    if ($ForAllUsers) {
        $ChkBoxForAllUsesrs.IsChecked = $true
    }

    $PackagesToRemove = [Collections.Generic.List[string]]::new()
    $AppPackages = GetAppBundle -Exclude $ExcludedPackages -AllUsers:$ForAllUsers
    $AppPackages | AddControl

    if ($AppPackages.Count -eq 0) {
        Write-Verbose -Message $Localization.NoData -Verbose
    }
    else {
        Start-Sleep -Milliseconds 300
        Add-Type -AssemblyName System.Windows.Forms
        $SetForegroundWindow = @{
            Namespace        = "WinAPI"
            Name             = "ForegroundWindow"
            Language         = "CSharp"
            MemberDefinition = @"
[DllImport("user32.dll")]
public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);

[DllImport("user32.dll")]
[return: MarshalAs(UnmanagedType.Bool)]
public static extern bool SetForegroundWindow(IntPtr hWnd);
"@
        }

        if (-not ("WinAPI.ForegroundWindow" -as [type])) {
            Add-Type @SetForegroundWindow
        }

        Get-Process | Where-Object -FilterScript { $_.MainWindowTitle -match "WebWin" } | ForEach-Object -Process {
            [WinAPI.ForegroundWindow]::ShowWindowAsync($_.MainWindowHandle, 10)
            Start-Sleep -Milliseconds 150
            [WinAPI.ForegroundWindow]::SetForegroundWindow($_.MainWindowHandle)
            Start-Sleep -Milliseconds 150
            [System.Windows.Forms.SendKeys]::SendWait("{BACKSPACE 1}")
        }
        if ($PackagesToRemove.Count -gt 0) {
            $ButtonUninstall.IsEnabled = $true
        }

        $Window.Add_Loaded( { $Window.Activate() })
        $Form.ShowDialog() | Out-Null
    }
}
Function ShowRecentShortcuts {
    Write-Host "Showing recent shortcuts..."
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -ErrorAction SilentlyContinue -Verbose
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -ErrorAction SilentlyContinue -Verbose
}
Function HideRecentShortcuts {
    Write-Host "Hiding recent shortcuts..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -Type DWord -Value 0 -Verbose
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -Type DWord -Value 0 -Verbose
}
Function UnpinTaskbarIcons {
    Write-Host "Unpinning all Taskbar icons..."
    Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Name "Favorites" -Type Binary -Value ([byte[]](255))
    Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Name "FavoritesResolve" -ErrorAction SilentlyContinue -Verbose
}
Function UnpinStartMenuTiles {
    Write-Host "Unpinning all Start Menu tiles..."
    If ([System.Environment]::OSVersion.Version.Build -ge 15063 -And [System.Environment]::OSVersion.Version.Build -le 16299) {
        Get-ChildItem -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount" -Include "*.group" -Recurse | ForEach-Object {
            $data = (Get-ItemProperty -Path "$($_.PsPath)\Current" -Name "Data").Data -Join ","
            $data = $data.Substring(0, $data.IndexOf(",0,202,30") + 9) + ",0,202,80,0,0"
            Set-ItemProperty -Path "$($_.PsPath)\Current" -Name "Data" -Type Binary -Value $data.Split(",")
        }
    }
    ElseIf ([System.Environment]::OSVersion.Version.Build -eq 17133) {
        $key = Get-ChildItem -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount" -Recurse | Where-Object { $_ -like "*start.tilegrid`$windows.data.curatedtilecollection.tilecollection\Current" }
        $data = (Get-ItemProperty -Path $key.PSPath -Name "Data").Data[0..25] + ([byte[]](202, 50, 0, 226, 44, 1, 1, 0, 0))
        Set-ItemProperty -Path $key.PSPath -Name "Data" -Type Binary -Value $data
    }
}
function AddRunAsDifferentUserInContextMenu {
    param
    (
        [Parameter(
            Mandatory = $true,
            ParameterSetName = "Show"
        )]
        [switch]
        $Show,

        [Parameter(
            Mandatory = $true,
            ParameterSetName = "Hide"
        )]
        [switch]
        $Hide
    )

    switch ($PSCmdlet.ParameterSetName) {
        "Show" {
            Remove-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\exefile\shell\runasuser" -Name Extended -Force -ErrorAction Ignore
        }
        "Hide" {
            New-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\exefile\shell\runasuser" -Name Extended -PropertyType String -Value "" -Force
        }
    }
    Write-Host "Finished" -ForegroundColor Magenta
}
Function setBGRegion {
    Set-ItemProperty -Path REGISTRY::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA -Value 0 -Verbose
    Set-Culture bg-BG -Verbose
    Set-TimeZone -Name "FLE Standard Time" -Verbose
    Set-WinSystemLocale -SystemLocale "bg-BG" -Verbose
    Set-WinHomeLocation -GeoId 35 -Verbose
    $LanguageList = Get-WinUserLanguageList 
    $LanguageList.Add("bg-BG")
    Set-WinUserLanguageList $LanguageList -Verbose
    Write-Host "Finished" -ForegroundColor Magenta
}
function installMSIPackage {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [String] $msiFIle
    )
    Start-Process msiexec.exe -Wait -ArgumentList  "/I  $msiFIle  /quiet"
    Write-Host "Finished" -ForegroundColor Magenta
}
function DisableIP6 {
    Get-NetAdapter -Name *
    $adapters = Get-NetAdapterBinding -ComponentID ms_tcpip6
    foreach ($adapter in $adapters) {
        Disable-NetAdapterBinding -InterfaceAlias $adapter.InterfaceAlias -ComponentID ms_tcpip6 -Verbose
    }
}
Function DoSpeak { 
    [System.Console]::Beep(1111, 333)
    $Text = "Installation Complete"
    $object = New-Object System.Speech.Synthesis.SpeechSynthesizer 
    $object.Speak($Text)
    [System.Console]::Beep(1111, 333)
}
########################## BUTTONS####################
$btnSystemSettings.Add_Click( {
        #$MainForm.Hide()
        [xml]$XAML = @"
<Window 
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
    xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
    Title="SystemSettings" Height="480" Width="250" ResizeMode="NoResize" WindowStartupLocation="CenterScreen">
    <Grid>
    <Button Name="btnCreateRP" Content="Create Restore Point" Margin="1,1,1,1" VerticalAlignment="Top" Width="240" Height="30" FontSize="12" FontFamily="Times New Roman" HorizontalAlignment="Left"/>
    <ProgressBar HorizontalAlignment="Center" Margin="0,4125,0,0" Width="800"/>
    <Button Name="btnPerfAction13" Content="13" HorizontalAlignment="Left" Margin="20,58,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction14" Content="14" HorizontalAlignment="Left" Margin="20,88,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction15" Content="15" HorizontalAlignment="Left" Margin="20,118,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction16" Content="16" HorizontalAlignment="Left" Margin="20,148,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction17" Content="17" HorizontalAlignment="Left" Margin="20,178,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction18" Content="18" HorizontalAlignment="Left" Margin="20,208,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction19" Content="19" HorizontalAlignment="Left" Margin="20,239,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction20" Content="20" HorizontalAlignment="Left" Margin="20,268,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction21" Content="21" HorizontalAlignment="Left" Margin="20,298,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnCheckHealth" Content="CheckHealth" HorizontalAlignment="Left" Margin="20,327,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnScanHealth" Content="ScanHealth" HorizontalAlignment="Left" Margin="20,357,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnRestoreHealth" Content="RestoreHealth" HorizontalAlignment="Left" Margin="20,387,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnDisableIPv6" Content="Disable IPv6" HorizontalAlignment="Left" Margin="125,58,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction02" Content="2" HorizontalAlignment="Left" Margin="125,88,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction03" Content="3" HorizontalAlignment="Left" Margin="125,118,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction04" Content="4" HorizontalAlignment="Left" Margin="125,148,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction05" Content="5" HorizontalAlignment="Left" Margin="125,178,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction06" Content="6" HorizontalAlignment="Left" Margin="125,208,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction07" Content="7" HorizontalAlignment="Left" Margin="125,239,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction08" Content="8" HorizontalAlignment="Left" Margin="125,268,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction09" Content="9" HorizontalAlignment="Left" Margin="125,298,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction10" Content="10" HorizontalAlignment="Left" Margin="125,327,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnPerfAction11" Content="11" HorizontalAlignment="Left" Margin="125,357,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    <Button Name="btnSfcScan" Content="SFC ScanNow" HorizontalAlignment="Left" Margin="125,387,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
    </Grid>
</Window>
"@
        #Read XAML
        $reader = (New-Object System.Xml.XmlNodeReader $xaml) 
        try { $Settings = [Windows.Markup.XamlReader]::Load( $reader ) }
        catch { Write-Host "Unable to load Windows.Markup.XamlReader"; exit }
        # Store Form Objects In PowerShell
        $xaml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name ($_.Name) -Value $Settings.FindName($_.Name) }
    
        $btnPerfAction13.Add_Click( {
            })
        $btnDisableIPv6.Add_Click({
                DisableIP6
            })
        $btnScanHealth.Add_Click{ (
                DISM /Online /Cleanup-Image /ScanHealth | Out-host
            ) }
        $btnCheckHealth.Add_Click{ (
                DISM /Online /Cleanup-Image /CheckHealth | Out-host
            ) }
        $btnRestoreHealth.Add_Click{ (
                DISM /Online /Cleanup-Image /RestoreHealth | Out-host
            ) }
        $btnSfcScan.Add_Click{ (
                sfc.exe /scannow | Out-host
            ) }
        $Settings.ShowDialog() | out-null
        #$Settings.Add_Closing({ })
    })
#SELECT PACKAGE MANAGER
$cbxPackageManager.Add_SelectionChanged( {
        if ($cbxPackageManager.SelectedIndex -eq 1) {
            $packageMgr = "Winget"
            Start-Sleep -Seconds 1
            $PackageArray = @(
                [pscustomobject]@{PackageName = "Google.Chrome" }
                [pscustomobject]@{PackageName = "Opera.Opera" }
                [pscustomobject]@{PackageName = "Mozilla.Firefox" }
                [pscustomobject]@{PackageName = "Adobe.AdobeAcrobatReaderDC" }
                [pscustomobject]@{PackageName = "SumatraPDF.SumatraPDF" }
                [pscustomobject]@{PackageName = "Foxit.FoxitReader" }
                [pscustomobject]@{PackageName = "Microsoft.Teams" }
                [pscustomobject]@{PackageName = "Microsoft.Skype" }
                [pscustomobject]@{PackageName = "Zoom.Zoom" }
                [pscustomobject]@{PackageName = "Telegram.TelegramDesktop" }
                [pscustomobject]@{PackageName = "OpenWhisperSystems.Signal" }
                [pscustomobject]@{PackageName = "Viber.Viber" }
                [pscustomobject]@{PackageName = "Notepad++.Notepad++" }
                [pscustomobject]@{PackageName = "GitHub.Atom" }
                [pscustomobject]@{PackageName = "Microsoft.Office" }
                [pscustomobject]@{PackageName = "IrfanSkiljan.IrfanView" }
                [pscustomobject]@{PackageName = "GIMP.GIMP" }
                [pscustomobject]@{PackageName = "ShareX.ShareX" }
                [pscustomobject]@{PackageName = "Microsoft.VisualStudioCode" }
                [pscustomobject]@{PackageName = "JetBrains.PyCharm.Community" }
                [pscustomobject]@{PackageName = "Microsoft.VisualStudio.2019.Enterprise" }
                [pscustomobject]@{PackageName = "Microsoft.AzureDataStudio" }
                [pscustomobject]@{PackageName = "Microsoft.SQLServerManagementStudio" }
                [pscustomobject]@{PackageName = "WinMerge.WinMerge" }
                [pscustomobject]@{PackageName = "Git.Git" }
                [pscustomobject]@{PackageName = "Microsoft.GitCredentialManagerCore" }
                [pscustomobject]@{PackageName = "Docker.DockerDesktop" }
                [pscustomobject]@{PackageName = "7zip.7zip" }
                [pscustomobject]@{PackageName = "Bandisoft.Bandizip" }
                [pscustomobject]@{PackageName = "Giorgiotani.Peazip" }
                [pscustomobject]@{PackageName = "TimKosse.FileZillaClient" }
                [pscustomobject]@{PackageName = "WinSCP.WinSCP" }
                [pscustomobject]@{PackageName = "Iterate.Cyberduck" }
                [pscustomobject]@{PackageName = "VideoLAN.VLC" }
                [pscustomobject]@{PackageName = "VentisMedia.MediaMonkey" }
                [pscustomobject]@{PackageName = "MPC-HC.MPC-HC" }
                [pscustomobject]@{PackageName = "KeePassXCTeam.KeePassXC" }
                [pscustomobject]@{PackageName = "KeeWeb.KeeWeb" }
                [pscustomobject]@{PackageName = "LogMeIn.LastPass" }
                [pscustomobject]@{PackageName = "Bitwarden.Bitwarden" }
                [pscustomobject]@{PackageName = "AgileBits.1Password" }
                [pscustomobject]@{PackageName = "OpenVPNTechnologies.OpenVPN" }
                [pscustomobject]@{PackageName = "WireGuard.WireGuard" }
                [pscustomobject]@{PackageName = "LogMeIn.Hamachi" }
                [pscustomobject]@{PackageName = "Fortinet.FortiClientVPN" }
                [pscustomobject]@{PackageName = "SonicWALL.GlobalVPN" }
                [pscustomobject]@{PackageName = "Lenovo.SystemUpdate" }
                [pscustomobject]@{PackageName = "Microsoft.WindowsTerminal" }
                [pscustomobject]@{PackageName = "Intel.IntelDriverAndSupportAssistant" }  
                [pscustomobject]@{PackageName = "GnuPG.GnuPG" }
                [pscustomobject]@{PackageName = "GnuPG.Gpg4win" }
                [pscustomobject]@{PackageName = "AntibodySoftware.WizTree" }
                [pscustomobject]@{PackageName = "Flameshot.Flameshot" }
                [pscustomobject]@{PackageName = "voidtools.Everything" }  
                [pscustomobject]@{PackageName = "Microsoft.AzureStorageExplorer" }
                
            )
            $checkWinget = (Invoke-Expression "winget -v")
            if (-not($checkWinget)) {
                Start-Sleep -Seconds 1
                Write-Host "winget is not found, installing it right now." -ForegroundColor 'Magenta'
                $asset = Invoke-RestMethod -Method Get -Uri 'https://api.github.com/repos/microsoft/winget-cli/releases/latest' | ForEach-Object assets | Where-Object name -like "*.msixbundle"
                $output = $PSScriptRoot + "\winget-latest.appxbundle"
                Write-Host "Downloading winget..."
                Write-Host "Please Wait." -ForegroundColor "Green"
                Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $output | Write-Verbose
                Start-Sleep -Seconds 1
                Write-Host "Installing the winget package"
                Write-host "Almost Ready" -ForegroundColor "Green"
                Add-AppxPackage -Path $output  | Write-Verbose
                
                Write-Host "Cleanup winget install package"
                if (Test-Path -Path $output) {
                    Remove-Item $output -Force -ErrorAction SilentlyContinue -Verbose
                }
            }
            else {      
                Write-Host "Winget Version $checkWinget is already installed" -ForegroundColor 'Green'
            }    
            Start-Sleep -Seconds 1
            #itemm missing pakcages from Choco
            $cbxVPN.Items.Add('Hamachi')
            $cbxVPN.Items.Add('Global VPN Client')  

        }
        if ($cbxPackageManager.SelectedIndex -eq 2) {
            $packageMgr = "Choco"
            $PackageArray = @(
                [pscustomobject]@{PackageName = "googlechrome" };
                [pscustomobject]@{PackageName = "opera" };
                [pscustomobject]@{PackageName = "firefox" };
                [pscustomobject]@{PackageName = "adobereader" };
                [pscustomobject]@{PackageName = "sumatrapdf" };
                [pscustomobject]@{PackageName = "foxitreader" };
                [pscustomobject]@{PackageName = "microsoft-teams" };
                [pscustomobject]@{PackageName = "skype" };
                [pscustomobject]@{PackageName = "zoom" };
                [pscustomobject]@{PackageName = "telegram" };
                [pscustomobject]@{PackageName = "signal" };
                [pscustomobject]@{PackageName = "viber" };
                [pscustomobject]@{PackageName = "notepadplusplus" };
                [pscustomobject]@{PackageName = "atom" };
                [pscustomobject]@{PackageName = "office365business" };
                [pscustomobject]@{PackageName = "irfanview" };
                [pscustomobject]@{PackageName = "gimp" };
                [pscustomobject]@{PackageName = "sharex" };
                [pscustomobject]@{PackageName = "pycharm-community" };
                [pscustomobject]@{PackageName = "vscode" };
                [pscustomobject]@{PackageName = "visualstudio2019enterprise" };
                [pscustomobject]@{PackageName = "azure-data-studio" };
                [pscustomobject]@{PackageName = "sql-server-management-studio" };
                [pscustomobject]@{PackageName = "winmerge" };
                [pscustomobject]@{PackageName = "git" };
                [pscustomobject]@{PackageName = "git-credential-manager-for-windows" };
                [pscustomobject]@{PackageName = "docker-desktop" };
                [pscustomobject]@{PackageName = "7zip" };
                [pscustomobject]@{PackageName = "bandizip" };
                [pscustomobject]@{PackageName = "peazip" };
                [pscustomobject]@{PackageName = "filezilla" };
                [pscustomobject]@{PackageName = "winscp" };
                [pscustomobject]@{PackageName = "cyberduck" };
                [pscustomobject]@{PackageName = "vlc" };
                [pscustomobject]@{PackageName = "mediamonkey" };
                [pscustomobject]@{PackageName = "mpc-hc" };
                [pscustomobject]@{PackageName = "keepassxc" };
                [pscustomobject]@{PackageName = "keeweb" };
                [pscustomobject]@{PackageName = "lastpass" };
                [pscustomobject]@{PackageName = "bitwarden" };
                [pscustomobject]@{PackageName = "1password" };
                [pscustomobject]@{PackageName = "openvpn" };
                [pscustomobject]@{PackageName = "wireguard" };
                [pscustomobject]@{PackageName = "forticlientvpn" };
                [pscustomobject]@{PackageName = "openconnect-gui" };
                [pscustomobject]@{PackageName = "lenovo-thinkvantage-system-update" };
                [pscustomobject]@{PackageName = "microsoft-windows-terminal" };
                [pscustomobject]@{PackageName = "intel-dsa" };
                [pscustomobject]@{PackageName = "GnuPG" };
                [pscustomobject]@{PackageName = "WizTree" };
                [pscustomobject]@{PackageName = "gpg4win" };
                [pscustomobject]@{PackageName = "flameshot" };
                [pscustomobject]@{PackageName = "Everything" };
                [pscustomobject]@{PackageName = "microsoftazurestorageexplorer" };
            )
            $checkChoco = (Invoke-Expression "choco -v")
            if (-not($checkChoco)) {
                Start-Sleep -Seconds "1"
                Write-Host "Chocolyte Version $checkChoco is already installed" -ForegroundColor 'Magenta'
                Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))  | Write-Verbose
            }
            else {
                      
                Write-Host "Chocolyte Version $checkChoco is already installed" -ForegroundColor 'Green'
            }
            Invoke-Expression 'choco feature enable -n allowGlobalConfirmation'
            Start-Sleep -Seconds "1"
            $cbxVPN.Items.Remove('Hamachi')
            $cbxVPN.Items.Remove('Global VPN Client')
        }
        $global:packageMgr = $packageMgr
        $global:PackageArray = $PackageArray
        return $packageArray
    })
$btnBulkInstall.Add_Click({
        [xml]$XAML = @"
    <Window 
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
    xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
    Title="Bulk Install" Height="425" Width="400" ResizeMode="NoResize" WindowStartupLocation="CenterScreen" ShowInTaskbar="True">
<Grid>
    <Label Name="lblPackageManager" Content="Custom List of Packages" Margin="0,8,0,0" VerticalAlignment="Top"/>

    <ComboBox Name="cbxBulkPackageManager" Width="175" Height="22" VerticalAlignment="Top"  Margin="207,10,2,0" SelectedIndex="0">
        <ComboBoxItem Content="No Package Manager Selected"/>
        <ComboBoxItem Content="Winget"/>
        <ComboBoxItem Content="Chocolyte"/>
    </ComboBox>

    <ListBox Name="ListAvailablePackages" Height="285" Margin="1,40,209,0" VerticalAlignment="Top" Width="174"/>
    <ListBox Name="ListPackagesToInstall" Height="285" Margin="209,40,1,0" VerticalAlignment="Top" Width="174"/>

    <Button Name="btnAddPackageToInstall" Content="&gt;" Height="135" Width="22" Margin="179,41,179,206" VerticalAlignment="Top" />
    <Button Name="btnRemovePackgeFromInstall" Content="&lt;" Height="135" Width="22" Margin="179,189,179,35" VerticalAlignment="Top" />

    <Button Name="btnPerformBlukInstallation" Content="Perform Bulk Installation" Margin="5,350,5,0" VerticalAlignment="Top" Height="20"/>
    <CheckBox Name="ChBPackageList" Content="Load All Available Packages" Margin="0,0,0,45" VerticalAlignment="Bottom" />
</Grid>
</Window>
"@
        #Read XAML
        $reader = (New-Object System.Xml.XmlNodeReader $xaml) 
        try { $BulkInstaller = [Windows.Markup.XamlReader]::Load( $reader ) }
        catch { Write-Host "Unable to load Windows.Markup.XamlReader"; exit }
        # Store Form Objects In PowerShell
        $xaml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name ($_.Name) -Value $BulkInstaller.FindName($_.Name) }

        $ChocoWebList = Invoke-Command { Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/brsvppv/WinSettingsManager/main/ChocoPackages.config')) }
        $ChocoWebList = foreach ($ChockPackage in $ChocoWebList ) {
            [pscustomobject]@{
                PackageName = $ChockPackage
            }
        }
        $WingetWebList = Invoke-Command { Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/brsvppv/WinSettingsManager/main/WingetPackages.config')) }
        $WingetWebList = foreach ($WingetPackage in $WingetWebList ) {
            [pscustomobject]@{
                PackageName = $WingetPackage
            }
        }
        $BulkInstaller.Add_Loaded({

                $cbxBulkPackageManager.SelectedIndex = $cbxPackageManager.SelectedIndex
            
                if ($cbxBulkPackageManager.SelectedIndex -eq 1) {
                    foreach ($package in $WingetWebList) {
                        $ListAvailablePackages.Items.Add($package.PackageName)
                    }
                }
                elseif ($cbxBulkPackageManager.SelectedIndex -eq 2) {
                    foreach ($package in $ChocoWebList) {
                        $ListAvailablePackages.Items.Add($package.PackageName)
                    }                   
                }
                else {
                    Write-Host "NO PACKAGE MANAGER SELECTED"
                }
            })
        $ChBPackageList.Add_Checked({
                $ListAvailablePackages.Items.Clear()
                $WingetAllPackages = "Winget Search"
                $GetWingetPackages = Invoke-Expression ($WingetAllPackages)
                foreach ($item in $GetWingetPackages){
                    $ListAvailablePackages.Items.Add($Item) | Select-Object {$_.Name}
                }
            })
            $Item1.Add_UnChecked({
                

            })          
        $cbxBulkPackageManager.Add_SelectionChanged({
                $ListAvailablePackages.Items.Clear()
                $ListPackagesToInstall.Items.Clear()
                if ($cbxBulkPackageManager.SelectedIndex -eq 1) {
                    foreach ($Package in $WingetWebList) {
            
                        $ListAvailablePackages.Items.Add($Package.PackageName)
                    }
                }
                elseif ($cbxBulkPackageManager.SelectedIndex -eq 2) {
                    foreach ($Package in $ChocoWebList) {
            
                        $ListAvailablePackages.Items.Add($Package.PackageName)
                    }
                }
                else {
                    Write-Host "Select Package Manager "
                } 
            })
        $btnAddPackageToInstall.Add_click({
                $SelectedPackge = $ListAvailablePackages.SelectedValue
                if($SelectedPackge -ne $null){
                $ListAvailablePackages.Items.Remove($SelectedPackge)
                $ListPackagesToInstall.Items.Add($SelectedPackge)
                }
                else{
                    Write-Host 'No Package Selected;'
                }
            })
        $btnRemovePackgeFromInstall.Add_click({
            $SelectedPackge = $ListPackagesToInstall.SelectedItem
            if($SelectedPackge -ne $null){
                $ListPackagesToInstall.Items.Remove($SelectedPackge)
                $ListAvailablePackages.Items.Add($SelectedPackge)
            }
            else {
                Write-host 'no packge slected'
            }
            })
        $btnPerformBlukInstallation.Add_click({

            })
            $BulkInstaller.Add_Closing({

            })
        $BulkInstaller.ShowDialog() | out-null

    })
#EMpty Setting For NOW
#Uninstall Selected Aaps
$btnUninstallApps.Add_Click( {
        UninstallWinApps
    })
#Unpin all tiles from Start Menu
$btnUnpinStartMenu.Add_Click( {
        UnpinStartMenuTiles
    })
# Enable/Disable Recent Shortcuts
$btnRecent.Add_Click( {
        if ($cbxRecent.SelectedIndex -eq 1) {
            ShowRecentShortcuts
        }
        elseif ($cbxRecent.SelectedIndex -eq 2) {
            HideRecentShortcuts
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
    })
# Unpin all icons from task bar
$btnUnpinTaskBar.Add_Click( {
        UnpinTaskbarIcons
    })
# # Enable/Disable DarkMode
$btnDarkMode.Add_Click( {
        if ($cbxDarkMode.SelectedIndex -eq 1) {
            EnableDarkMode
        }
        elseif ($cbxDarkMode.SelectedIndex -eq 2) {
            DisableDarkMode
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
    })
# Enable/Disable Cortana
$btnCortana.Add_Click( {
        if ($cbxCortana.SelectedIndex -eq 1) {
            EnableCortana
        }
        elseif ($cbxCortana.SelectedIndex -eq 2) {
            DisableCortana
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
	
    })
# Enable/Disable ThumbsDb
$btnThumbsDB.Add_Click( {
        if ($cbxThumbsDB.SelectedIndex -eq 1) {
            EnableThumbsDB
        }
        elseif ($cbxThumbsDB.SelectedIndex -eq 2) {
            DisableThumbsDB
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
    })
# Enable/Disable Thumbnails
$btnThumbnails.Add_Click( {
        if ($cbxThumbnails.SelectedIndex -eq 1) {
            EnableThumbnails
        }
        elseif ($cbxThumbnails.SelectedIndex -eq 2) {
            DisableThumbnails
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')   
        }
    })
# Set Visual settings for perforamnce/visuals 
$btnVFX.Add_Click( {
        if ($cbxVisualSettings.SelectedIndex -eq 1) {
            SetVisualFXPerformance
        }
        elseif ($cbxVisualSettings.SelectedIndex -eq 2) {
            SetVisualFXAppearance
        }
        else {
        
        }
    })
# Enable/Disable TailoredExpirance
$btnTailoredExp.Add_CLick( {
    
        if ($cbxTailoredExperiences.SelectedIndex -eq 1) {
            EnableTailoredExperiences

        }
        elseif ($cbxTailoredExperiences.SelectedIndex -eq 2) {
            DisableTailoredExperiences
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
    })
# Enable/Disable Location Tracking
$btnLocationTracking.Add_Click( {
    
        if ($cbxLocationTracking.SelectedIndex -eq 1) {
            EnableLocationTracking
        }
        elseif ($cbxLocationTracking.SelectedIndex -eq 2) {
            DisableLocationTracking
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
    })
# Enable/Disable Histroy
$btnHistory.Add_Click( {
        if ($cbxActivityHistory.SelectedIndex -eq 1) {
            EnableActivityHistory
        }
        elseif ($cbxActivityHistory.SelectedIndex -eq 2) {
            DisableActivityHistory
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
    })
# Enable/Disable Telemetry
$btnTelemetry.Add_CLick( {
        if ($cbxTelemetry.SelectedIndex -eq 1) {
            EnableTelemetry
        }
        elseif ($cbxTelemetry.SelectedIndex -eq 2) {
            DisableTelemetry
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')    
        }
    })
# Enable/Disable Background Apps
$btnBackgroundApps.Add_Click( {
        if ($cbxBackgroundApps.SelectedIndex -eq 1) {
            EnableBackgroundApps
        }
        elseif ($cbxBackgroundApps.SelectedIndex -eq 2) {
            DisableBackgroundApps
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
    })
# Enable/Disable AdvertisingID
$btnAdvertisingID.Add_Click( {
        if ($cbxAdvertisingID.SelectedIndex -eq 1) {
            EnableAdvertisingID
        }
        elseif ($cbxAdvertisingID.SelectedIndex -eq 2) {
            DisableAdvertisingID
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
    })
#Import ALL .cer from specific directory
$btnCertImport.Add_Click( {
        ImportCertFromDir
    })
# INSTALL .NET 3.5
$btnInstNet35.Add_Click( {
        try {
            write-host "Adding NetFx3"
            Dism /online /Enable-Feature /FeatureName:"NetFx3" | Out-Host
            if ($?) { 
                Write-Host  "Added NetFx3" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
#CREATE RESTORE POINT
$btnCreateRP.Add_Click( {
        $SystemDriveUniqueID = (Get-Volume | Where-Object -FilterScript { $_.DriveLetter -eq "$($env:SystemDrive[0])" }).UniqueID
        $SystemProtection = ((Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SPP\Clients")."{09F7EDC5-294E-4180-AF6A-FB0E6A0E9513}") | Where-Object -FilterScript { $_ -match [regex]::Escape($SystemDriveUniqueID) }
        switch ($null -eq $SystemProtection) {
            $true {
        
                Enable-ComputerRestore -Drive $env:SystemDrive
            }
        }

        New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" -Name SystemRestorePointCreationFrequency -PropertyType DWord -Value 0 -Force
        $dateAndtime = Get-Date  -UFormat "%y%m%d"
        $computerName = $env:COMPUTERNAME
        $chkPoint = "$computerName" + "_$dateAndtime"
        Checkpoint-Computer -Description "$chkPoint" -RestorePointType MODIFY_SETTINGS

        New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" -Name SystemRestorePointCreationFrequency -PropertyType DWord -Value 1440 -Force

    })
################################## BROWSER INSTALL #################################
$btnBrowserInstall.Add_Click( {
    
        if ($cbxBrowsers.Text -eq "Google Chrome") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Google*Chrome*" }
          
        }
        if ($cbxBrowsers.Text -eq "Opera Browser") {
    
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Opera*" }
        
        }
        if ($cbxBrowsers.Text -eq "Mozilla Firefox") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*firefox*" }    
            
            
        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  

    })
################################### PDF READER INSTALL##################################
$btnPdfInstall.Add_Click( {

        if ($cbxPDFReaders.Text -eq "Adobe Acrobat") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Adobe*Reader*" }
            $sysAppPackage = "Adobe.AdobeAcrobatReaderDC"
        }
        if ($cbxPDFReaders.Text -eq "Sumatra PDF") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Sumatra*" }
            $sysAppPackage = "SumatraPDF.SumatraPDF"
        }
        if ($cbxPDFReaders.Text -eq "Foxit Reader") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Foxit*" }
            $sysAppPackage = "Foxit.FoxitReader"
        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#################################### CHAT/VIDEO COMMUNICATION INSTALL###################################
$btnChatInstall.Add_Click( {
        if ($cbxChatApps.Text -eq "Microsoft Teams") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Microsoft*Teams*" }

        }
        if ($cbxChatApps.Text -eq "Microsoft Skype") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Skype*" }

        }
        if ($cbxChatApps.Text -eq "Zoom") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Zoom*" }

        }
        if ($cbxChatApps.Text -eq "Telegram") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Telegram*" }
            $sysAppPackage = "Telegram.TelegramDesktop"
        }
        if ($cbxChatApps.Text -eq "Signal") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Signal*" }
            $sysAppPackage = "OpenWhisperSystems.Signal"
        }
        if ($cbxChatApps.Text -eq "Viber") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Viber*" }
            
        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak("$text")
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
##################################### TEXT EDITOR INSTALL ####################################
$btnTextEditorInstall.Add_Click( {
        if ($cbxEditorApps.Text -eq "Notepad++") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Notepad*" }

        }
        if ($cbxEditorApps.Text -eq "Atom") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Atom*" }

        }
        if ($cbxEditorApps.Text -eq "Microsoft Office") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Office*" }

        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
######################################  Image Application INSTALL #####################################
$btnImageInstall.Add_Click( {
        if ($cbxImageViwers.Text -eq "Flameshot") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*flameshot*" }
        }
        if ($cbxImageViwers.Text -eq "IrfanView") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*IrfanView*" }
        }
        if ($cbxImageViwers.Text -eq "GIMP") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*GIMP*" }
        }
        if ($cbxImageViwers.Text -eq "ShareX") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*ShareX*" }
        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
################################# DEV TOOLS INSTALL #################################
$btnDevToolsInstall.Add_Click( {
        #<ComboBoxItem Content="Visual Studio Code"/>
        if ($cbxDevTools.Text -eq "Visual Studio Code") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*code*" }
            #$sysAppPackage = "Microsoft.VisualStudioCode"
        }
        #<ComboBoxItem Content="PyCharm"/>
        if ($cbxDevTools.Text -eq "PyCharm") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*PyCharm*" }
            #$sysAppPackage = "JetBrains.PyCharm.Community"
        }
        # <ComboBoxItem Content="VS 2019 Enterprise"/>
        if ($cbxDevTools.Text -eq "VS 2019 Enterprise") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*VisualStudio*Enterprise" }
           
        }
        # <ComboBoxItem Content="Azure Data Studio"/>
        if ($cbxDevTools.Text -eq "Azure Data Studio") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Azure*Data*Studio*" }
        }
        #<ComboBoxItem Content="SQL Management Studio"/>
        if ($cbxDevTools.Text -eq "SQL Managment Studio") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*SQL*Studio*" }
            
        }
        if ($cbxDevTools.Text -eq "Azure Storage Explorer") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*storageexplorer*" }
            
        }
        # <ComboBoxItem Content="WinMerge"/>
        if ($cbxDevTools.Text -eq "WinMerge") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*WinMerge*" }
        }
        # <ComboBoxItem Content="Git"/>
        if ($cbxDevTools.Text -eq "Git") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Git" }
           
        }
        #<ComboBoxItem Content="GitCredManager"/>
        if ($cbxDevTools.Text -eq "GitCredManager") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Git*Cred*" }
        }
        # <ComboBoxItem Content="Docker Desktop"/>
        if ($cbxDevTools.Text -eq "Docker Desktop") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Docker*Desktop*" }
        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
################################## ################################# 
$btnArhiveAppInstall.Add_Click( {
        if ($cbxArchiveApps.Text -eq "7 Zip Manager") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*7zip*" }
        }
        if ($cbxArchiveApps.Text -eq "Bandizip") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Bandizip*" }
        }
        if ($cbxArchiveApps.Text -eq "PeaZip") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*PeaZip*" }
         
        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
##################################  FTP INSTALL ################################# 
$btnFtpAppInstall.Add_Click( {
        if ($cbxFtpApps.Text -eq "FileZilla") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*FileZilla*" }
           
        }
        if ($cbxFtpApps.Text -eq "WinSCP") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*WinSCP*" }
      
        }
        if ($cbxFtpApps.Text -eq "Cyberduck") {
            
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Cyberduck*" }

        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
################################### INSTALL VIDEO APPS##################################
$btnVideoInstall.Add_Click( {
        if ($cbxVideoApps.Text -eq "VLC") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*VLC*" }
        }
        if ($cbxVideoApps.Text -eq "MediaMonkey") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*MediaMonkey*" }
        }
        if ($cbxVideoApps.Text -eq "Media Player Classic") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*MPC*" }
            $sysAppPackage = "MPC-HC.MPC-HC"
        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#################################INSTALL PASS MANAGER #################################
$btnPassMgrInstall.Add_Click( {
        if ($cbxPassMgr.Text -eq "KeePassXC") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*KeePass*" }

        }
        if ($cbxPassMgr.Text -eq "KeeWeb") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*KeeWeb*" }  
        }
        if ($cbxPassMgr.Text -eq "LastPass") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*LastPass*" }
        }
        if ($cbxPassMgr.Text -eq "Bitwarden") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Bitwarden*" }
        }
        if ($cbxPassMgr.Text -eq "1Password") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*1Password*" }
        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing" + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    Write-Host "Installed $sysAppPackage.PackageName" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
################################### VPN INSTALL  ################################# 
$btnVpnInstall.Add_Click( {
        if ($cbxVPN.Text -eq "OpenVPNTechnologies") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*code*" }
            #$sysAppPackage = "OpenVPNTechnologies.OpenVPN"
        }
        if ($cbxVPN.Text -eq "WireGuard") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*WireGuard*" }
            #$sysAppPackage = "WireGuard.WireGuard"
        }
        if ($cbxVPN.Text -eq "Hamachi") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Hamachi*" }
            #$sysAppPackage = "LogMeIn.Hamachi"
        }
        if ($cbxVPN.Text -eq "FortiClient VPN") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Forti*" }
            #$sysAppPackage = "Fortinet.FortiClientVPN"
        }
        if ($cbxVPN.Text -eq "Global VPN Client") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Global*VPN*" }
            #$sysAppPackage = "SonicWALL.GlobalVPN"
        }
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"  + $sysAppPackage.PackageName
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
################################# SYS DRIVER INSTALLS #################################
#sys isntalls
$btnSysInstalls.Add_Click( {

        #Lenovo System Update"
        if ($cbxSelectSystemApps.Text -eq "Lenovo System Update") {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Lenovo*Update*" }
        }
        #"Windows Terminal"
        if ($cbxSelectSystemApps.Text -eq "Windows Terminal") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Windows*Terminal*" }
            #$sysAppPackage = "Microsoft.WindowsTerminal"
        }
        if ($cbxSelectSystemApps.Text -eq 'GnuPG Encryption') {
            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*GnuPG*" }
        }
        #Intel Driver Assistant
        if ($cbxSelectSystemApps.Text -eq "Intel Driver Assistant") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Intel*" }
            #$sysAppPackage = "Intel.IntelDriverAndSupportAssistant "
        }
        if ($cbxSelectSystemApps.Text -eq "Gpg4win") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*gpg4win*" }
            #$sysAppPackage = "Intel.IntelDriverAndSupportAssistant "
        }
        if ($cbxSelectSystemApps.Text -eq "WizTree") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*WizTree*" }
            #$sysAppPackage = "Intel.IntelDriverAndSupportAssistant "
        }
        if ($cbxSelectSystemApps.Text -eq "Everything") {

            $sysAppPackage = $global:PackageArray |  Where-Object { $_.PackageName -like "*Everything*" }
            #$sysAppPackage = "Intel.IntelDriverAndSupportAssistant "
        }
        
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "$InstNotification"
                $command = $global:packageMgr + " install " + $sysAppPackage.PackageName
                Invoke-Expression $command | Out-Host         
                Start-Sleep -Seconds 1
                
                if ($?) {
                    DoSpeak
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $sysAppPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#################################  Install-ALl #################################
$btnInstallAll.Add_Click({
        if ($cbxPackageManager.SelectedIndex -eq 1) {
            foreach ($Package in $PackageArray) {
                $command = $global:packageMgr + " install " + $Package.PackageName
                Invoke-Expression $command | Out-Host | Write-Verbose
                Start-Sleep -Seconds 1
                [System.Console]::Beep(1111, 333)
            }
        }
        elseif ($cbxPackageManager.SelectedIndex -eq 2) {
            foreach ($Package in $PackageArray) {
                $command = $global:packageMgr + " install " + $Package.PackageName
                Invoke-Expression $command | Out-Host | Write-Verbose
                Start-Sleep -Seconds 1
                [System.Console]::Beep(1111, 333)
            }
        }
        else { 
            Write-Host "No Package Manager Selected"
        }
    })
$MainForm.ShowDialog() | out-null

#Set-ExecutionPolicy Bypass -Scope Process -Force;  Invoke-Command {Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/brsvppv/WinSettingsManager/main/WinSettingsManager.ps1'))}
