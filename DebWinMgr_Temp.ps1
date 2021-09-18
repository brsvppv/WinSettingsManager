[Net.ServicePointManager]::SecurityProtocol = 'Tls12'
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName PresentationCore, PresentationFramework
[xml]$XAML = @"
<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        
        Title="DebWinManager" Height="500" Width="655" ResizeMode="NoResize" WindowStartupLocation="CenterScreen">
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
                <ComboBoxItem Content="AdobeAcrobatReaderDC"/>
                <ComboBoxItem Content="SumatraPDF"/>
                <ComboBoxItem Content="FoxitReader"/>
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
                <ComboBoxItem Content="Hamachi"/>
                <ComboBoxItem Content="FortiClient VPN"/>
                <ComboBoxItem Content="Global VPN Client"/>
            </ComboBox>
            <ComboBox Name="cbxSelectSystemApps" HorizontalAlignment="Left" Margin="20,388,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
                <ComboBoxItem Content="Select System Package "/>
                <ComboBoxItem Content="Lenovo SystemUpdate"/>
                <ComboBoxItem Content="WindowsTerminal"/>
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
            <ComboBox Name="cbxNavInstall" HorizontalAlignment="Left" Margin="437,388,0,0" VerticalAlignment="Top" Width="160" Height="22" SelectedIndex="0">
                <ComboBoxItem Content="Select NAV/BC To Install"/>
                <ComboBoxItem Content="2013R2"/>
                <ComboBoxItem Content="2015"/>
                <ComboBoxItem Content="2016"/>
                <ComboBoxItem Content="2017"/>
                <ComboBoxItem Content="2018"/>
                <ComboBoxItem Content="BC"/>
            </ComboBox>
            <ComboBox Name="cbxNAVBGModule" HorizontalAlignment="Left" Margin="437,418,0,0" VerticalAlignment="Top" Width="160" SelectedIndex="0">
            <ComboBoxItem Content="Select NAV BG Module"/>
            <ComboBoxItem Content="BG2013"/>
            <ComboBoxItem Content="BG2013R2"/>
            <ComboBoxItem Content="BG2015"/>
            <ComboBoxItem Content="BG2016"/>
            <ComboBoxItem Content="BG2017"/>
            <ComboBoxItem Content="BG2018"/>
            <ComboBoxItem Content="BGBC14"/>
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
            <Button Name="btnNavInstall" Content=">" HorizontalAlignment="Left" Margin="597,388,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnNAVBGModule" Content=">" HorizontalAlignment="Left" Margin="597,418,0,0" VerticalAlignment="Top" Width="25" Height="22"/>
            <Button Name="btnCreateRP" Content="Create Restore Point" HorizontalAlignment="Left" Margin="20,25,0,0" VerticalAlignment="Top" Width="90" Height="20" FontSize="10" FontFamily="Times New Roman"/>
            <Button Name="btnSystemSettings" Content="System Settings  " HorizontalAlignment="Left" Margin="111,25,0,0" VerticalAlignment="Top" Width="90" Height="20" FontSize="10" FontFamily="Times New Roman"/>
            <Button Name="btnUninstallApps" Content="Remove Apps" HorizontalAlignment="Left" Margin="216,59,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction2" Content="2" HorizontalAlignment="Left" Margin="216,89,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction3" Content="3" HorizontalAlignment="Left" Margin="216,119,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction4" Content="4" HorizontalAlignment="Left" Margin="216,149,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction5" Content="5" HorizontalAlignment="Left" Margin="216,179,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction6" Content="6" HorizontalAlignment="Left" Margin="216,209,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction7" Content="7" HorizontalAlignment="Left" Margin="216,240,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction8" Content="8" HorizontalAlignment="Left" Margin="216,269,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction9" Content="9" HorizontalAlignment="Left" Margin="216,299,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnLightShot" Content="LightShot" HorizontalAlignment="Left" Margin="216,328,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnInstallAnyconnect" Content="AnyConnect" HorizontalAlignment="Left" Margin="216,358,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnInstNet35" Content=".NetFrame 3.5" HorizontalAlignment="Left" Margin="216,388,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnSetBGRegion" Content="Set BG Region" HorizontalAlignment="Left" Margin="325,59,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction11" Content=">" HorizontalAlignment="Left" Margin="325,89,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction12" Content=">" HorizontalAlignment="Left" Margin="325,119,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction13" Content=">" HorizontalAlignment="Left" Margin="325,149,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction14" Content=">" HorizontalAlignment="Left" Margin="325,179,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction15" Content=">" HorizontalAlignment="Left" Margin="325,209,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnPerformAction16" Content=">" HorizontalAlignment="Left" Margin="325,240,0,0" VerticalAlignment="Top" Width="100" Height="22" />
            <Button Name="btnPerformAction17" Content=">" HorizontalAlignment="Left" Margin="325,269,0,0" VerticalAlignment="Top" Width="100" Height="22" />
            <Button Name="btnPerformAction18" Content="e" HorizontalAlignment="Left" Margin="325,299,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnMEDC" Content="MEDC" HorizontalAlignment="Left" Margin="325,328,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnEsetAgent" Content="ESET" HorizontalAlignment="Left" Margin="325,358,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <Button Name="btnCertImport" Content="Import Certificates>" HorizontalAlignment="Left" Margin="325,388,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
            <!--  <CheckBox Name="chbWinget" Content="Winget" HorizontalAlignment="Left" Margin="225,5,0,0" VerticalAlignment="Top"/> -->
            <!--<CheckBox Name="chbChocolyte" Content="Chocolyte" Style="{StaticResource {x:Type ToggleButton}}" HorizontalAlignment="Left" Margin="225,25,0,0" VerticalAlignment="Top"/> -->
            <!-- <CheckBox Name="chbSettings" Content="Settings" Style="{StaticResource {x:Type ToggleButton}}" HorizontalAlignment="Left" Margin="111,25,0,0" VerticalAlignment="Top"  Width="90" Height="20" FontSize="12" FontFamily="Times New Roman"/> -->
            <Label Name="lblCurTime" Content="" HorizontalAlignment="Left" Margin="251,0,0,0" VerticalAlignment="Top" Width="100" Height="50" FontSize="24" FontFamily="Times New Roman"/>

        </Grid>
    </Window>
"@
#Read XAML
$reader = (New-Object System.Xml.XmlNodeReader $xaml) 
try { $Form = [Windows.Markup.XamlReader]::Load( $reader ) }
catch { Write-Host "Unable to load Windows.Markup.XamlReader"; exit }
# Store Form Objects In PowerShell
$xaml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name) }

$timer = New-Object System.Windows.Forms.Timer;

$timer_Tick = {

    $lblCurTime.Content = "$([string]::Format("{0:d2}:{1:d2}:{2:d2}",$((Get-Date).Hour),$((Get-Date).Minute),$((Get-Date).Second)))"
}
$timer.Enabled = $True
$timer.Interval = 1
$timer.add_Tick($timer_Tick)

$global:packageMgr = $null
$browserPackage = $null
$pdfAppPackage = $null
$chatAppPackage = $null
$textEditorPackage = $null
$imageViwerPackage = $null
$devToolsPackage = $null
$archiveAppPackage = $null
$ftpAppPackage = $null
$videoAppPackage = $null
$passMgrPackage = $null
$vpnAppPacakge = $null
$sysAppPackage = $null
Set-ExecutionPolicy Bypass -Scope Process -Force;
$orig = [Net.ServicePointManager]::SecurityProtocol
write-host $orig -ForegroundColor Yellow


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
function DirectNavInstall {
    if ($cbxNavInstall.Text -eq "2013R2") {
        #$xmlLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV2013R2\NAV2013R2.xml"
        #$imageLocation = "\\tvbg\root\\!Software\Products_Install\MSNAV\NAV2013R2\NAV2013R2_36897W1.iso"
        $xmlName = "NAV2013R2.xml"
        $imageName = "NAV2013R2_36897W1.iso"
        $fileImage = "NAV2013R2"
    }
    if ($cbxNavInstall.Text -eq "2015") {
        #$xmlLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV2015\NAV2015.xml"
        #$imageLocation = "\\tvbg\root\\!Software\Products_Install\MSNAV\NAV2015\NAV2015_41370W1.iso"
        $xmlName = "NAV2015.xml"
        $imageName = "NAV2015_41370W1.iso"
        $fileImage = "NAV2015"
    }
    if ($cbxNavInstall.Text -eq '2016') {
        #$xmlLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV2016\NAV2016.xml"
        #$imageLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV2016\NAV2016.iso"
        $xmlName = "NAV2016.xml"
        $imageName = "NAV2016.iso"
        $fileImage = "NAV2016"
    }
    if ($cbxNavInstall.Text -eq '2017') {
        #$xmlLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV2017\NAV2017.xml"
        # $imageLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV2017\NAV2017_17972W1.iso"
        $xmlName = "NAV2017.xml"
        $imageName = "NAV2017_17972W1.iso"
        $fileImage = "NAV2017"
    }
    if ($cbxNavInstall.Text -eq '2018') {
        #$xmlLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV2018\NAV2018.xml"
        #$imageLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV2018\NAV2018_31747W1.iso"
        $xmlName = "NAV2018.xml"
        $imageName = "NAV2018_31747W1.iso"
        $fileImage = "NAV2018"
    }
    if ($cbxNavInstall.Text -eq 'BC') {
        #$xmlLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV365BC\Dynamics365BC14.xml"
        # $imageLocation = "\\tvbg\root\!Software\Products_Install\MSNAV\NAV365BC\Dynamics365BC14.iso"
        $xmlName = "Dynamics365BC14.xml"
        $imageName = "Dynamics365BC14.iso"
        $fileImage = "NAV365BC"
    }
    Write-Host "$message"
    $targetDir = "\\tvbg\root\!Software\Products_Install\MSNAV\$fileImage"
    $logfiletxt = "Log.txt"
    if (!(Test-Path $env:USERPROFILE\$logfiletxt)) {
        New-Item -Path "$env:USERPROFILE" -Name "Log.txt" -ItemType "file"
    }
    else { 
        Remove-Item -Path $env:USERPROFILE\$logfiletxt -Force
        New-Item -Path "$env:USERPROFILE" -Name "Log.txt" -ItemType "file"
    }
    $fullLogPath = "$env:USERPROFILE\$logfiletxt"
    function Install-NAV {  
        Param
        (
        
            $DVDFolder = "$targetDir\$imageName",
       
            $Configfile = "$targetDir\$xmlName",
            [Parameter(Mandatory = $false)]
            $LicenseFile,
            [Parameter(Mandatory = $true)]
            $Log = "$fullLogPath",
            [Parameter(Mandatory = $false)]
            [Switch] $DisableCompileBusinessLogic
        )
        process {
            $Logdir = [io.path]::GetDirectoryName($Log)
            if (!(Test-Path $Logdir)) { New-Item -Path $Logdir -ItemType directory }

            $ConfigFile = Get-Item $Configfile

            Write-Host "Starting install from $($DVDFolder) with Configfile $($ConfigFile.Fullname)" -ForegroundColor Green
            [xml]$InstallConfig = Get-Content $Configfile

            $InstallationResult = New-Object System.Object
            $InstallationResult | Add-Member -MemberType NoteProperty -Name Databasename -Value ($InstallConfig.Configuration.Parameter | Where-Object Id -eq SQLDatabaseName).Value
            $InstallationResult | Add-Member -MemberType NoteProperty -Name TargetPath -Value  ($InstallConfig.Configuration.Parameter | Where-Object Id -eq TargetPath).Value
            $InstallationResult | Add-Member -MemberType NoteProperty -Name TargetPathX64 -Value ($InstallConfig.Configuration.Parameter | Where-Object Id -eq TargetPathX64).Value
            $InstallationResult | Add-Member -MemberType NoteProperty -Name ServerInstance -Value ($InstallConfig.Configuration.Parameter | Where-Object Id -eq NavServiceInstanceName).Value

            #Install
    
            write-host -foregroundcolor green -object 'Installing ...'
            write-host -foregroundcolor green -object "   Database: $($InstallationResult.Databasename)"
            write-host -foregroundcolor green -object "   ServerInstance: $($InstallationResult.ServerInstance)"
            write-host -foregroundcolor green -object ''
            write-host -foregroundcolor green -object 'please be patient ...' 

            if ($DVDFolder.Length -eq 3) {
                $SetupPath = "$($DVDFolder)setup.exe"
            }
            else {
                $SetupPath = Join-Path $DVDFolder 'setup.exe'
            }
            Start-Process $SetupPath -ArgumentList "/config ""$($Configfile.Fullname)""", '/quiet', "/Log ""$($Log)""" -PassThru | Wait-Process

            if ($LicenseFile) {
                $null = Import-Module (join-path $InstallationResult.TargetPathX64 'service\navadmintool.ps1' )
                $null = Get-NAVServerInstance -ServerInstance $installationresult.ServerInstance | Set-NAVServerInstance -Start -ErrorAction SilentlyContinue -Verbose

                write-host -ForegroundColor Green -Object "Installing licensefile '$Licensefile'"
                $null = Get-NAVServerInstance -ServerInstance $installationresult.ServerInstance | Import-NAVServerLicense -LicenseFile $LicenseFile -Database NavDatabase
                write-host -ForegroundColor Green -Object "Restarting $($installationresult.ServerInstance)"
                $null = Get-NAVServerInstance -ServerInstance $installationresult.ServerInstance | Set-NAVServerInstance -Restart
            }

            if ($DisableCompileBusinessLogic) {
                write-host -ForegroundColor Green -Object 'Disabling CompileBusinessApplicationAtStartup'            
                $null = Import-Module (join-path $InstallationResult.TargetPathX64 'service\navadmintool.ps1' )
                $null = Get-NAVServerInstance -ServerInstance $installationresult.ServerInstance | Set-NAVServerConfiguration -KeyName 'CompileBusinessApplicationAtStartup' -KeyValue 'False'

                write-host -ForegroundColor Green -Object "Restarting $($installationresult.ServerInstance)"
                $null = Get-NAVServerInstance -ServerInstance $installationresult.ServerInstance | Set-NAVServerInstance -Restart
            }

            Write-Host 'Log output:' -ForegroundColor Green
            Get-Content $Log | ForEach-Object {
                Write-Host "  $_" -ForegroundColor Gray
            }

        }
        end {
            $InstallationResult
        }
    }
    Start-Sleep -s 15
    $message = "Performing the Installation... Please Wait"
    Write-Host "$message"
    function Install-NAVFromISO {
        param (

    
            $ISOFilePath = "$targetDir\$imageName",
    
  
            $ConfigFile = "$targetDir\$xmlName",
    
   
            $Licensefile,

            $Log = "$fullLogPath",

            [Parameter(Mandatory = $false)]
            [Switch] $DisableCompileBusinessLogic
        )
        $null = Mount-DiskImage -ImagePath $ISOFilePath 
        $iSOImage = Get-DiskImage -ImagePath $ISOFilePath | Get-Volume
        $DVDFolder = "$($IsoImage.DriveLetter):\"
        write-host "Mounted ISO to $($IsoImage.DriveLetter)-Drive" -ForegroundColor Green

        $InstallationResult = Install-NAV -DVDFolder $DVDFolder -Configfile $ConfigFile -LicenseFile $Licensefile -Log $Log -DisableCompileBusinessLogic:$DisableCompileBusinessLogic

        $null = Dismount-DiskImage -ImagePath $ISOFilePath
        write-host "Dismounted $($IsoImage.DriveLetter)-Drive" -ForegroundColor Green

        #fix installation by registering 
        write-host "Fixing 'Run' from DEV enviromnent" -ForegroundColor Green
        $RegasmFile = (Get-childItem -Path "$env:windir\Microsoft.NET\Framework\" -Filter 'RegAsm.exe' -recurse -ErrorAction SilentlyContinue -Verbose | Sort-Object Fullname | Select-Object -Last 1).Fullname
        $RegasmArguments = "/register ""$($InstallationResult.TargetPath)\RoleTailored Client\Microsoft.Dynamics.Nav.Client.WinForms.dll"" /tlb"
        Start-Process -FilePath $RegasmFile -ArgumentList $RegasmArguments

        return $InstallationResult
    }
    Install-NAVFromISO
    Write-Host "Finished" -ForegroundColor Magenta
}
Function InstallBG {
    
    if ($cbxNAVBGModule.SelectedIndex -eq 0) {
        write-host "0"
    }
    else {
        $BGLangVersion = $cbxNAVBGModule.Text
        $RTCPath = "\RTC\bin\Debug\RTC.msi"
        write-host "$BGLangVersion"
        $BGModuleISOLocation = 'Z:\!Software\Products_Install\MSNAV\All-BG-Modules\BGLANGMODULES.ISO'
        $null = Mount-DiskImage -ImagePath $BGModuleISOLocation 
        $iSOImage = Get-DiskImage -ImagePath $BGModuleISOLocation | Get-Volume
        $BGModuleISO = "$($IsoImage.DriveLetter):\"
        $InstallerDirectory = Join-Path $BGModuleISO -ChildPath $BGLangVersion | Join-Path  -ChildPath "$RTCPath"
        
        write-host $InstallerDirectory
    }
    Try {
        Start-Process  $InstallerDirectory
    }
    Catch {
        [System.Windows.MessageBox]::Show("Error during $item installation:  $_", 'Error Not Install', 'OK', 'Error')
        Break
    }
    finally {
        Start-Sleep -Seconds 1
        $null = Dismount-DiskImage -ImagePath $BGModuleISOLocation
    }
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
                    } 
                    else {
                        Write-Host 'No Certificates found in the selected directory arrays' -ForegroundColor Yellow
                    }
                }
                else {
                    Write-Host "SELECT DIRECTORY" -ForegroundColor "RED"
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("IMPORT ERROR:  $_", 'Error', 'OK', 'Error')
            }
            Write-Host "Finished" -ForegroundColor Magenta
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
#[System.Windows.MessageBox]::Show("1",'Info', 'OK', 'Information')
######### [System.Windows.MessageBox]::Show("Select Action",'Info', 'OK', 'Information')
########################### BUTTONS####################
$btnPerformAction2.Add_Click( {
       
    })
#Select Package Manager
$cbxPackageManager.Add_SelectionChanged( {
        if ($cbxPackageManager.SelectedIndex -eq 1) {
            $packageMgr = " Invoke-Expression $using:packageMgr" 
            $checkWinget = (Invoke-Expression "winget -v")
            if (-not($checkWinget)) {
        
                Write-Host "winget is not found, installing it right now." -ForegroundColor 'Magenta'
                $asset = Invoke-RestMethod -Method Get -Uri 'https://api.github.com/repos/microsoft/winget-cli/releases/latest' | ForEach-Object assets | Where-Object name -like "*.msixbundle"
                $output = $PSScriptRoot + "\winget-latest.appxbundle"
                Write-Host "Downloading winget..."
                Write-Host "Please Wait." -ForegroundColor "Green"
                Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $output
                Write-Host "Installing the winget package"
                Write-host "Almost Ready" -ForegroundColor "Green"
                Add-AppxPackage -Path $output
        
                Write-Host "Cleanup $using:packageMgr package"
                if (Test-Path -Path $output) {
                    Remove-Item $output -Force -ErrorAction SilentlyContinue -Verbose
                }
            }
            else {      
                
                Write-Host "Winget Version $checkWinget is already installed" -ForegroundColor 'Green'
            }      
        }
        if ($cbxPackageManager.SelectedIndex -eq 2) {
            $packageMgr = "Choco Install"
            $checkChoco = (Invoke-Expression "choco -v")
            if (-not($checkChoco)) {
                Write-Host "Chocolyte Version $checkChoco is already installed" -ForegroundColor 'Magenta'
                Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
            }
            else {
                      
                Write-Host "Chocolyte Version $checkChoco is already installed" -ForegroundColor 'Green'
            }
        }
    })
#set Ragion to BG
$btnSetBGRegion.Add_Click( {
        setBGRegion
    })
# Uninstall bolatware apps
$btnUninstallApps.Add_Click( {
        UninstallWinApps
    })
#Enable/Disable DarkMOde
$btnDarkMode.Add_Click( {
        if ($cbxDarkMode.SelectedIndex -eq 1) {
            EnableDarkMode
        }
        if ($cbxDarkMode.SelectedIndex -eq 2) {
            DisableDarkMode
        }
        else {
            [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')
        }
    })
#Install AnyConnect.
$btnInstallAnyconnect.Add_Click( {
        installMSIPackage -msiFIle "\\tvbg\root\!Software\Basic_Install\VPN\AnyConnect\anyconnect-win-4.8.01090-core-vpn-predeploy-k9.msi"
    })
#Install MS Dynamics NAV
$btnNavInstall.Add_Click( {
        if ($cbxNavInstall.SelectedIndex -eq 0) {
            Write-Host "Please Selected Version"
        }
        else {
            DirectNavInstall
        }
    })
$btnNAVBGModule.Add_Click( {
        InstallBG
    })

$btnSystemSettings.Add_Click( {
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
        <Button Name="btnPerfAction22" Content="22" HorizontalAlignment="Left" Margin="20,327,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
        <Button Name="btnPerfAction23" Content="23" HorizontalAlignment="Left" Margin="20,357,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
        <Button Name="btnPerfAction24" Content="24" HorizontalAlignment="Left" Margin="20,387,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
        <Button Name="btnPerfAction01" Content="1" HorizontalAlignment="Left" Margin="125,58,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
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
        <Button Name="btnPerfAction12" Content="12" HorizontalAlignment="Left" Margin="125,387,0,0" VerticalAlignment="Top" Width="100" Height="22"/>
        </Grid>
</Window>
"@
        #Read XAML
        $reader = (New-Object System.Xml.XmlNodeReader $xaml) 
        try { $Form = [Windows.Markup.XamlReader]::Load( $reader ) }
        catch { Write-Host "Unable to load Windows.Markup.XamlReader"; exit }
        # Store Form Objects In PowerShell
        $xaml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name) }
        
        $btnPerfAction13.Add_CLick( {
                [System.Windows.MessageBox]::Show("Select Action", 'Info', 'OK', 'Information')

            })
        $Form.ShowDialog() | out-null
       
    })
#Enable/Disable CORTANA
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
#Enable/Disable ThumbsDB
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
#Enable/Disable Thumbnails
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
#Set Visual For Performance or BetterLook
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
##Enable/Disable Tailored Expirenace
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
#Enable/Disable Location Tracking
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
##Enable/Disable Histroy
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
#Enable/Disable Telemetry
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
#Enable/Disable background apps
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
#Disable/Enable AdvertisingID
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

$btnMEDC.Add_Click( {
        $temp = $env:TEMP
        $filePath = "$temp\MGD\"

        If (!(test-path $filePath)) {
            New-Item -path "$temp" -name "MGD" -Itemtype "directory"
        }
        Try {
            Start-BitsTransfer -Source "\\tvbg\root\nf\Shared\!DO_NOT_DELETE!\Agents\MDCAGENT\LocalOffice\localsetup\*" -destination "$filePath" -Verbose
        
            Set-Location $filePath
            Start-Process "$filePath\setup.bat"
        }
        catch {
            write-host "ERROR $_"
        }
    })
#InstallEsetAgent
$btnEsetAgent.Add_Click( {
        Try {
            $batPath = "\\tvbg\root\nf\Shared\!DO_NOT_DELETE!\Agents\ESETAGENTS\ApplicationAgent"
            $batfile = "PROTECTAgentInstaller.bat"
            $tempFile = "$env:TEMP"
            Copy-Item -Path $batPath\$batfile -Destination $tempFile\$batfile
            $batFullPath = "$tempFile\$batfile"

            Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression -Command: "cmd.exe /c $batFullPath"
        }
        Catch {
            Write-host "ErrorOccured: $_"
            #[System.Windows.MessageBox]::Show("No Server Installation:  $_", 'Error No Install', 'OK', 'Error')"
        }
    })
#Import Certificates From directory
$btnCertImport.Add_Click( {
        ImportCertFromDir
    })
#Install NetFramework 3.5
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
#CreateRestorePoint
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
#WINGET BROWSER INSTALL
$btnBrowserInstall.Add_Click( {
    
        if ($cbxBrowsers.Text -eq "Google Chrome") {

            $browserPackage = "Google.Chrome"
        }
        if ($cbxBrowsers.Text -eq "Opera Browser") {
    
            $browserPackage = "Opera.Opera"
        }
        if ($cbxBrowsers.Text -eq "Mozilla Firefox") {
    
            $browserPackage = "Mozilla.Firefox"
            
        }
        if ($browserPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $browserPackage"
                 Invoke-Expression $using:packageMgr $browserPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $browserPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  

    })
#WINGET PDF READER INSTALL
$btnPdfInstall.Add_Click( {
    
        if ($cbxPDFReaders.Text -eq "AdobeAcrobatReaderDC") {

            $pdfAppPackage = "Adobe.AdobeAcrobatReaderDC"
        }
        if ($cbxPDFReaders.Text -eq "SumatraPDF") {

            $pdfAppPackage = "SumatraPDF.SumatraPDF"
        }
        if ($cbxPDFReaders.Text -eq "FoxitReader") {

            $pdfAppPackage = "Foxit.FoxitReader"
        }
        if ($pdfAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $pdfAppPackage"
                 Invoke-Expression $using:packageMgr $pdfAppPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $pdfAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#WINGET CHAT/VIDEO COMMUNICATION INSTALL
$btnChatInstall.Add_Click( {
        if ($cbxChatApps.Text -eq "Microsoft Teams") {

            $chatAppPackage = "Microsoft.Teams"
        }
        if ($cbxChatApps.Text -eq "Microsoft Skype") {

            $chatAppPackage = "Microsoft.Skype"
        }
        if ($cbxChatApps.Text -eq "Zoom") {

            $chatAppPackage = "Zoom.Zoom"
        }
        if ($cbxChatApps.Text -eq "Telegram") {

            $chatAppPackage = "Telegram.TelegramDesktop"
        }
        if ($cbxChatApps.Text -eq "Signal") {

            $chatAppPackage = "OpenWhisperSystems.Signal"
        }
        if ($cbxChatApps.Text -eq "Viber") {

            $chatAppPackage = "Viber.Viber"
        }
        if ($chatAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $chatAppPackage"
                 Invoke-Expression $using:packageMgr $chatAppPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $chatAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#WINGETT TEXT EDITOR INSTALL
$btnTextEditorInstall.Add_Click( {
        if ($cbxEditorApps.Text -eq "Notepad++") {

            $textEditorPackage = "Notepad++.Notepad++"
        }
        if ($cbxEditorApps.Text -eq "Atom") {

            $textEditorPackage = "GitHub.Atom"
        }
        if ($cbxEditorApps.Text -eq "Microsoft Office") {

            $textEditorPackage = "Microsoft.Office"
        }
        if ($textEditorPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $textEditorPackage"
                 Invoke-Expression $using:packageMgr $textEditorPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $textEditorPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#WINGET  Image Application INSTALL
$btnImageInstall.Add_Click( {
        if ($cbxImageViwers.Text -eq "IrfanView") {

            $imageViwerPackage = "IrfanSkiljan.IrfanView"
        }
        if ($cbxImageViwers.Text -eq "GIMP") {

            $imageViwerPackage = "GIMP.GIMP"
        }
        if ($cbxImageViwers.Text -eq "ShareX") {

            $imageViwerPackage = "ShareX.ShareX"
        }
        if ($imageViwerPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $imageViwerPackage"
                 Invoke-Expression $using:packageMgr $imageViwerPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $imageViwerPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#WINGET DEV TOOLSS
$btnDevToolsInstall.Add_Click( {
        if ($cbxDevTools.Text -eq "Visual Studio Code") {

            $devToolsPackage = "Microsoft.VisualStudioCode"
        }
        if ($cbxDevTools.Text -eq "PyCharm") {

            $devToolsPackage = "JetBrains.PyCharm.Community"
        }
        if ($cbxDevTools.Text -eq "VS 2019 Enterprise") {

            $devToolsPackage = "Microsoft.VisualStudio.2019.Enterprise "
        }
        if ($cbxDevTools.Text -eq "Azure Data Studio") {

            $devToolsPackage = "Microsoft.AzureDataStudio "
        }
        if ($cbxDevTools.Text -eq "SQL Managment Studio") {

            $devToolsPackage = "Microsoft.SQLServerManagementStudio"
        }
        if ($cbxDevTools.Text -eq "WinMerge") {

            $devToolsPackage = "WinMerge.WinMerge"
        }
        if ($cbxDevTools.Text -eq "Git") {

            $devToolsPackage = "Git.Git"
        }
        if ($cbxDevTools.Text -eq "GitCredManager") {

            $devToolsPackage = "Microsoft.GitCredentialManagerCore"
        }
        if ($devToolsPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $devToolsPackage"
                 Invoke-Expression $using:packageMgr $devToolsPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $devToolsPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#WINGET 
$btnArhiveAppInstall.Add_Click( {
        if ($cbxArchiveApps.Text -eq "7 Zip Manager") {

            $archiveAppPackage = "7zip.7zip"
        }
        if ($cbxArchiveApps.Text -eq "Bandizip") {

            $archiveAppPackage = "Bandisoft.Bandizip"
        }
        if ($cbxArchiveApps.Text -eq "PeaZip") {

            $archiveAppPackage = "Giorgiotani.Peazip"
        }
        if ($archiveAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $archiveAppPackage"
                 Invoke-Expression $using:packageMgr $archiveAppPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $archiveAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#WINGET FTP APPLICATIONS INSTALL
$btnFtpAppInstall.Add_Click( {
        if ($cbxFtpApps.Text -eq "FileZilla") {

            $ftpAppPackage = "TimKosse.FileZillaClient"
        }
        if ($cbxFtpApps.Text -eq "WinSCP") {

            $ftpAppPackage = "WinSCP.WinSCP"
        }
        if ($cbxFtpApps.Text -eq "Cyberduck") {

            $ftpAppPackage = "Iterate.Cyberduck"
        }
        if ($ftpAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $ftpAppPackage"
                 Invoke-Expression $using:packageMgr $ftpAppPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $ftpAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
# Invoke-Expression $using:packageMgr VIDEO APPS
$btnVideoInstall.Add_Click( {
        if ($cbxVideoApps.Text -eq "VLC") {

            $videoAppPackage = "VideoLAN.VLC"
        }
        if ($cbxVideoApps.Text -eq "MediaMonkey") {

            $videoAppPackage = "VentisMedia.MediaMonkey"
        }
        if ($cbxVideoApps.Text -eq "Media Player Classic") {

            $videoAppPackage = "MPC-HC.MPC-HC"
        }
        if ($videoAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $videoAppPackage"
                 Invoke-Expression $using:packageMgr $videoAppPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $videoAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
# Invoke-Expression $using:packageMgr PASS MANAGER
$btnPassMgrInstall.Add_Click( {
        if ($cbxPassMgr.Text -eq "KeePassXC") {

            $passMgrPackage = "KeePassXCTeam.KeePassXC"
        }
        if ($cbxPassMgr.Text -eq "KeeWeb") {

            $passMgrPackage = "KeeWeb.KeeWeb"
        }
        if ($cbxPassMgr.Text -eq "LastPass") {

            $passMgrPackage = "LogMeIn.LastPass"
        }
        if ($cbxPassMgr.Text -eq "Bitwarden") {

            $passMgrPackage = "Bitwarden.Bitwarden"
        }
        if ($cbxPassMgr.Text -eq "1Password") {

            $passMgrPackage = "AgileBits.1Password"
        }
        if ($passMgrPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $passMgrPackage"
                 Invoke-Expression $using:packageMgr $passMgrPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $passMgrPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
#WINGET VPN INSTALL
$btnVpnInstall.Add_Click( {
        if ($cbxVPN.Text -eq "OpenVPNTechnologies") {

            $vpnAppPacakge = "OpenVPNTechnologies.OpenVPN"
        }
        if ($cbxVPN.Text -eq "WireGuard") {

            $vpnAppPacakge = "WireGuard.WireGuard"
        }
        if ($cbxVPN.Text -eq "Hamachi") {

            $vpnAppPacakge = "LogMeIn.Hamachi"
        }
        if ($cbxVPN.Text -eq "FortiClient VPN") {

            $vpnAppPacakge = "Fortinet.FortClientVPN"
        }
        if ($cbxVPN.Text -eq "Global VPN Client") {

            $vpnAppPacakge = "SonicWALL.GlobalVPN"
        }
        if ($vpnAppPacakge -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $vpnAppPacakge"
                 Invoke-Expression $using:packageMgr $vpnAppPacakge | Out-Host
                if ($?) {
                    Write-Host "Installed $vpnAppPacakge" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
$btnSysInstalls.Add_Click( {
        if ($cbxSelectSystemApps.Text -eq "Lenovo SystemUpdate") {

            $sysAppPackage = "Lenovo.SystemUpdate"
        }
        if ($cbxSelectSystemApps.Text -eq "WindowsTerminal") {

            $sysAppPackage = "Microsoft.WindowsTerminal"
        }
        if ($cbxSelectSystemApps.Text -eq "Intel Driver Assistant") {

            $sysAppPackage = "Intel.IntelDriverAndSupportAssistant "
        }
        
        if ($sysAppPackage -eq $null) {
            Write-Host "Error: No Packages Selected $_" -ForegroundColor 'RED'
            #[System.Windows.MessageBox]::Show("No Packages Selected", 'Error Installation', 'OK', 'Information')           
        }
        else {
            Try {
                Write-host "Installing $sysAppPackage"
                 Invoke-Expression $using:packageMgr $sysAppPackage | Out-Host
                if ($?) {
                    Write-Host "Installed $sysAppPackage" -ForegroundColor Green
                    #[System.Windows.MessageBox]::Show("Installed $browserPackage".'Installtion Finished', 'OK', 'Information')
                }
            }
            catch {
                [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
            }   
        }  
    })
$Form.ShowDialog() | out-null
