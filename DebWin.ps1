#[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
Add-Type -AssemblyName PresentationCore, PresentationFramework
[xml]$XAML = @"
<Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
 
    Title="DebWin" Height="480" Width="800" ResizeMode="NoResize" WindowStartupLocation="CenterScreen">
    <Grid>
        <Button Name="btnRestorePoint" Content="CreateRestorePoint" HorizontalAlignment="Left" Margin="30,15,15,15" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform01" Content="Winget" HorizontalAlignment="Left" Margin="30,60,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform02" Content="Chocolyte" HorizontalAlignment="Left" Margin="29,90,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform03" Content="Lenovo SystemUpdate" HorizontalAlignment="Left" Margin="29,120,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform04" Content="Intel Driver Assistant" HorizontalAlignment="Left" Margin="29,150,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform05" Content="OpenVPNTechnologies" HorizontalAlignment="Left" Margin="29,180,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform06" Content="Google Chrome" HorizontalAlignment="Left" Margin="29,210,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform07" Content="Mozilla Firefox" HorizontalAlignment="Left" Margin="29,240,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform08" Content="Opera Browser" HorizontalAlignment="Left" Margin="29,270,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform09" Content="AdobeAcrobatReaderDC" HorizontalAlignment="Left" Margin="29,300,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform10" Content="SumatraPDF" HorizontalAlignment="Left" Margin="29,330,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform11" Content="FoxitReader" HorizontalAlignment="Left" Margin="29,360,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform12" Content="IrfanView" HorizontalAlignment="Left" Margin="29,390,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform13" Content="GIMP" HorizontalAlignment="Left" Margin="189,60,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform14" Content="Microsoft Teams" HorizontalAlignment="Left" Margin="188,90,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform15" Content="Microsoft Skype" HorizontalAlignment="Left" Margin="188,120,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform16" Content="MsUpdate Assistant" HorizontalAlignment="Left" Margin="188,150,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform17" Content="Microsoft Office" HorizontalAlignment="Left" Margin="188,180,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform18" Content="SQLManagementStudio" HorizontalAlignment="Left" Margin="188,210,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform19" Content="VS 2019 Enterprise" HorizontalAlignment="Left" Margin="188,240,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform20" Content="VisualStudioCode" HorizontalAlignment="Left" Margin="188,270,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform21" Content="GitCredManager" HorizontalAlignment="Left" Margin="188,300,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform22" Content="PACKAGE" HorizontalAlignment="Left" Margin="188,330,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform23" Content="PACKAGE" HorizontalAlignment="Left" Margin="188,360,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform24" Content="PACKAGE" HorizontalAlignment="Left" Margin="188,390,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform25" Content="DISM-Repair" HorizontalAlignment="Center" Margin="29,60,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform26" Content="PackgeName" HorizontalAlignment="Center" Margin="29,90,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform27" Content="PackgeName" HorizontalAlignment="Center" Margin="29,120,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform28" Content="PackgeName" HorizontalAlignment="Center" Margin="29,150,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform29" Content="WindowsTerminal" HorizontalAlignment="Center" Margin="29,180,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform30" Content="Notepad++" HorizontalAlignment="Center" Margin="29,210,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform31" Content="WinSCP" HorizontalAlignment="Center" Margin="29,240,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform32" Content="Winmerge" HorizontalAlignment="Center" Margin="29,270,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform33" Content="ShareX" HorizontalAlignment="Center" Margin="29,300,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform34" Content="7 Zip Manager" HorizontalAlignment="Center" Margin="29,330,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform35" Content="EverythingSearch" HorizontalAlignment="Center" Margin="29,360,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform36" Content="NetFramework 3.5" HorizontalAlignment="Center" Margin="29,390,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform37" Content="Uninstall WSApps" HorizontalAlignment="Left" Margin="503,60,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform38" Content="ContextMenu - RunAs" HorizontalAlignment="Left" Margin="503,90,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform39" Content="PackgeName" HorizontalAlignment="Left" Margin="503,120,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform40" Content="PackgeName" HorizontalAlignment="Left" Margin="503,150,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform41" Content="PackgeName" HorizontalAlignment="Left" Margin="503,180,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform42" Content="PackgeName" HorizontalAlignment="Left" Margin="503,210,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform43" Content="PackgeName" HorizontalAlignment="Left" Margin="503,240,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform44" Content="PackgeName" HorizontalAlignment="Left" Margin="503,270,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform45" Content="Import Certificates" HorizontalAlignment="Left" Margin="503,300,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform46" Content="Update All Apps" HorizontalAlignment="Left" Margin="503,330,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform47" Content="PACKAGE" HorizontalAlignment="Left" Margin="503,360,0,0" VerticalAlignment="Top" Width="138" Height="25"/>
        <Button Name="btnPerform48" Content="PsWindowsUpdates" HorizontalAlignment="Left" Margin="503,390,0,0" VerticalAlignment="Top" Width="138" Height="25"/>

    </Grid>
</Window>   
"@

#Read XAML
$reader = (New-Object System.Xml.XmlNodeReader $xaml) 
try { $Form = [Windows.Markup.XamlReader]::Load( $reader ) }
catch { Write-Host "Unable to load Windows.Markup.XamlReader"; exit } 
$xaml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name) }

Set-ExecutionPolicy Bypass -Scope Process -Force;
$orig = [Net.ServicePointManager]::SecurityProtocol
write-host $orig -ForegroundColor Yellow
[Net.ServicePointManager]::SecurityProtocol = 'Tls12'
function ImportCertFromDir {

    [xml]$XAML = @"
<Window
xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
     
        Title="Select Certificates Directory" Height="175" Width="300" ResizeMode="NoResize" ShowInTaskbar="True">
        <Grid Background="{DynamicResource {x:Static SystemColors.WindowBrushKey}}" Margin="0,0,0,0" Height="155" VerticalAlignment="Top" HorizontalAlignment="Left" Width="300">
        <TextBox Name="txtCertDir" HorizontalAlignment="Left" Height="20" Margin="26,51,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="231" FontSize="11" IsReadOnly="true"/>
        <Button Name="btnSelectCertDirectory" Content="..." HorizontalAlignment="Left" Margin="255,51,0,0" VerticalAlignment="Top" Width="20" Height="20"/>
        <Button Name="btnPerformAction" Content="Perform Action" Margin="27,90,0,0" VerticalAlignment="Top" Height="23" HorizontalAlignment="Left" Width="248"/>
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
        })
    $Form.ShowDialog() | out-null
}
Function WaitForKey {
	Write-Output "Press any key to continue..."
	[Console]::ReadKey($true) | Out-Null 
}
Function UnpinTaskbarIcons {
	Write-Output "Unpinning all Taskbar icons..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Name "Favorites" -Type Binary -Value ([byte[]](255))
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband" -Name "FavoritesResolve" -ErrorAction SilentlyContinue
}
Function DisableThumbsDB {
	Write-Output "Disabling creation of Thumbs.db..."
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbnailCache" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbsDBOnNetworkFolders" -Type DWord -Value 1
}
Function EnableThumbsDB {
	Write-Output "Enable creation of Thumbs.db..."
	Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbnailCache" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "DisableThumbsDBOnNetworkFolders" -ErrorAction SilentlyContinue
}
Function DisableThumbnails {
	Write-Output "Disabling thumbnails..."
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "IconsOnly" -Type DWord -Value 1
}
Function EnableThumbnails {
	Write-Output "Enabling thumbnails..."
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "IconsOnly" -Type DWord -Value 0
}
Function HideRecentShortcuts {
	Write-Output "Hiding recent shortcuts..."
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -Type DWord -Value 0
}

Function ShowRecentShortcuts {
	Write-Output "Showing recent shortcuts..."
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowRecent" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "ShowFrequent" -ErrorAction SilentlyContinue
}
FUnction visualPerfSettings{
    Write-Host "Adjusting visual effects for performance..."
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 200
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144,18,3,128,16,0,0,0))
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
    Write-Host "Adjusted visual effects for performance"
}
Function SetVisualFXPerformance {
	Write-Output "Adjusting visual effects for performance..."
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 0
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 0
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144,18,3,128,16,0,0,0))
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 0
	Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 0
}
Function SetVisualFXAppearance {
	Write-Output "Adjusting visual effects for appearance..."
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "DragFullWindows" -Type String -Value 1
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "MenuShowDelay" -Type String -Value 400
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](158,30,7,128,18,0,0,0))
	Set-ItemProperty -Path "HKCU:\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Type String -Value 1
	Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewAlphaSelect" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ListviewShadow" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAnimations" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Type DWord -Value 3
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\DWM" -Name "EnableAeroPeek" -Type DWord -Value 1
}
Function UnpinStartMenuTiles {
	Write-Output "Unpinning all Start Menu tiles..."
	If ([System.Environment]::OSVersion.Version.Build -ge 15063 -And [System.Environment]::OSVersion.Version.Build -le 16299) {
		Get-ChildItem -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount" -Include "*.group" -Recurse | ForEach-Object {
			$data = (Get-ItemProperty -Path "$($_.PsPath)\Current" -Name "Data").Data -Join ","
			$data = $data.Substring(0, $data.IndexOf(",0,202,30") + 9) + ",0,202,80,0,0"
			Set-ItemProperty -Path "$($_.PsPath)\Current" -Name "Data" -Type Binary -Value $data.Split(",")
		}
	} ElseIf ([System.Environment]::OSVersion.Version.Build -eq 17133) {
		$key = Get-ChildItem -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\CloudStore\Store\Cache\DefaultAccount" -Recurse | Where-Object { $_ -like "*start.tilegrid`$windows.data.curatedtilecollection.tilecollection\Current" }
		$data = (Get-ItemProperty -Path $key.PSPath -Name "Data").Data[0..25] + ([byte[]](202,50,0,226,44,1,1,0,0))
		Set-ItemProperty -Path $key.PSPath -Name "Data" -Type Binary -Value $data
	}
}
Function RequireAdmin {
	If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
		Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
		Exit
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
Function EnableTelemetry {
	Write-Host "Enabling ..."
	Enable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
	Enable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
	Enable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
	Enable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
	Enable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
	Enable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 3
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -ErrorAction SilentlyContinue
}
Function DisableTelemetry {
	Write-Host "Disabling..."
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Application Experience\ProgramDataUpdater" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Autochk\Proxy" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" | Out-Null
	Disable-ScheduledTask -TaskName "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" | Out-Null
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
}
Function EnableActivityHistory {
	Write-Output "Enabling..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -ErrorAction SilentlyContinue
}
Function DisableActivityHistory {
	Write-Output "Disabling..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "EnableActivityFeed" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "PublishUserActivities" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "UploadUserActivities" -Type DWord -Value 0
}
Function EnableBackgroundApps {
	Write-Output "Enabling..."
	Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" | ForEach-Object {
		Remove-ItemProperty -Path $_.PsPath -Name "Disabled" -ErrorAction SilentlyContinue
		Remove-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -ErrorAction SilentlyContinue
	}
}
Function DisableLocationTracking {
	Write-Output "Disabling Location Tracking..."
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Deny"
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 0
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 0
}
Function EnableLocationTracking {
	Write-Output "Enabling Location Tracking..."
	If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location")) {
		New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" -Name "Value" -Type String -Value "Allow"
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" -Name "SensorPermissionState" -Type DWord -Value 1
	Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" -Name "Status" -Type DWord -Value 1
}
Function DisableTailoredExperiences {
	Write-Output "Disabling Tailored Experiences..."
	If (!(Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent")) {
		New-Item -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -Type DWord -Value 1
}
Function EnableTailoredExperiences {
	Write-Output "Enabling Tailored Experiences..."
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CloudContent" -Name "DisableTailoredExperiencesWithDiagnosticData" -ErrorAction SilentlyContinue
}
Function DisableBackgroundApps {
	Write-Output "Disabling..."
	Get-ChildItem -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Exclude "Microsoft.Windows.Cortana*" | ForEach-Object {
		Set-ItemProperty -Path $_.PsPath -Name "Disabled" -Type DWord -Value 1
		Set-ItemProperty -Path $_.PsPath -Name "DisabledByUser" -Type DWord -Value 1
	}
}
Function DisableAdvertisingID {
	Write-Output "Disabling Advertising ID..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -Type DWord -Value 1
}
Function EnableAdvertisingID {
	Write-Output "Enabling Advertising ID..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" -Name "DisabledByGroupPolicy" -ErrorAction SilentlyContinue
}
Function DisableCortana {
	Write-Output "Disabling Cortana..."
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -Type DWord -Value 0
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 1
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 1
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -Type DWord -Value 0
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Type DWord -Value 0
}       
Function EnableCortana {
	Write-Output "Enabling Cortana..."
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Personalization\Settings" -Name "AcceptedPrivacyPolicy" -ErrorAction SilentlyContinue
	If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore")) {
		New-Item -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitTextCollection" -Type DWord -Value 0
	Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization" -Name "RestrictImplicitInkCollection" -Type DWord -Value 0
	Remove-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" -Name "HarvestContacts" -ErrorAction SilentlyContinue
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -ErrorAction SilentlyContinue
}
Function EnableSharingMappedDrives {
	Write-Output "Enabling sharing mapped drives between users..."
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLinkedConnections" -Type DWord -Value 1
}
Function DisableSharingMappedDrives {
	Write-Output "Disabling sharing mapped drives between users..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLinkedConnections" -ErrorAction SilentlyContinue
}
Function DisableFirewall {
	Write-Output "Disabling Firewall..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" -Name "EnableFirewall" -Type DWord -Value 0
}
Function EnableFirewall {
	Write-Output "Enabling Firewall..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" -Name "EnableFirewall" -ErrorAction SilentlyContinue
}
Function DisableDefender {
	Write-Output "Disabling Windows Defender..."
	If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender")) {
		New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Force | Out-Null
	}
	Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -Type DWord -Value 1
	If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -ErrorAction SilentlyContinue
	} ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063) {
		Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -ErrorAction SilentlyContinue
	}
}
Function EnableDefender {
	Write-Output "Enabling Windows Defender..."
	Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -ErrorAction SilentlyContinue
	If ([System.Environment]::OSVersion.Version.Build -eq 14393) {
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "WindowsDefender" -Type ExpandString -Value "`"%ProgramFiles%\Windows Defender\MSASCuiL.exe`""
	} ElseIf ([System.Environment]::OSVersion.Version.Build -ge 15063) {
		Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SecurityHealth" -Type ExpandString -Value "`"%ProgramFiles%\Windows Defender\MSASCuiL.exe`""
	}
}
Function EnableDarkMode {
    Write-Output "Enabling Dark Mode"
      Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
}
Function DisableDarkMode {
      Write-Output "Disabling Dark Mode"
      Remove-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme
}
Function defaultUpdates{
    Write-Host "Enabling driver offering through Windows Update..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -ErrorAction SilentlyContinue
    Write-Host "Enabling Windows Update automatic restart..."
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -ErrorAction SilentlyContinue
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -ErrorAction SilentlyContinue
    Write-Host "Enabled driver offering through Windows Update"
}
Function securityUpdates{
    Write-Host "Disabling driver offering through Windows Update..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Device Metadata" -Name "PreventDeviceMetadataFromNetwork" -Type DWord -Value 1
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontPromptForWindowsUpdate" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DontSearchWindowsUpdate" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DriverSearching" -Name "DriverUpdateWizardWuSearchEnabled" -Type DWord -Value 0
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "ExcludeWUDriversInQualityUpdate" -Type DWord -Value 1
    Write-Host "Disabling Windows Update automatic restart..."
    If (!(Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU")) {
        New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Force | Out-Null
    }
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -Type DWord -Value 1
    Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUPowerManagement" -Type DWord -Value 0
    Write-Host "Disabled driver offering through Windows Update"
}

$btnRestorePoint.Add_Click( {
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
#Assign event
$btnPerform01.Add_Click( {
        #check for wingeT
        Try {
            # Check if winget is already installed
            $resultmsg = (invoke-expression "winget -v") 2>&1
            if ($exiterror) { 
                throw $resultmsg 
            }
            Write-Host "winget is already installed."
        }
        Catch {
            # winget is not installed. Install it from the Github release
            Write-Host "winget is not found, installing it right now."

            $asset = Invoke-RestMethod -Method Get -Uri 'https://api.github.com/repos/microsoft/winget-cli/releases/latest' | ForEach-Object assets | Where-Object name -like "*.msixbundle"
            $output = $PSScriptRoot + "\winget-latest.appxbundle"
            Write-Host "Downloading winget..."
            Write-Host "Please Wait." -ForegroundColor "Green"
            Invoke-WebRequest -Uri $asset.browser_download_url -OutFile $output
            Write-Host "Installing the winget package"
            Write-host "Almost Ready" -ForegroundColor "Green"
            Add-AppxPackage -Path $output

            Write-Host "Cleanup winget install package"
            if (Test-Path -Path $output) {
                Remove-Item $output -Force -ErrorAction SilentlyContinue
            }
        }
    })
$btnPerform02.Add_Click( {
        Try {
            # Check if winget is already installed
            $resultmsg = (Invoke-Expression "chocolatey -v") 2>&1
            if ($exitmsg) { 
                throw $resultmsg 
            }
            Write-Host "chocolatey $resultmsg  is already installed."
        }
        Catch {
            Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
        }
    })
$btnPerform03.Add_Click( {
        try {
            Write-Host "Lenovo SystemUpdate"
            winget install Lenovo.SystemUpdate | Out-Host
            if ($?) {
                Write-Host "Installed Lenovo SystemUpdate" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }     
    })
$btnPerform04.Add_Click( {
        try {
            Write-Host "Intel Driver And Support Assistant"
            winget install Intel.IntelDriverAndSupportAssistant | Out-Host
            if ($?) { 
                Write-Host "Installed Intel Driver And Support Assistant" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }     
    })
$btnPerform05.Add_Click( {
        try {
            Write-Host "Open VPN Technologies"
            winget install OpenVPNTechnologies.OpenVPN | Out-Host
            if ($?) { 
                Write-Host "Installed Open VPN Technologies" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }     
    })
$btnPerform06.Add_Click( {
        try {
            Write-Host "Google Chrome"
            winget install Google.Chrome | Out-Host
            if ($?) { 
                Write-Host "Installed Google Chrome" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }     
    })
$btnPerform07.Add_Click( {
        try {
            Write-Host "Mozilla Firefox"
            winget install Mozilla.Firefox | Out-Host
            if ($?) { 
                Write-Host "Installed Mozilla.Firefox" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform08.Add_Click( {
        try {
            Write-Host "Opera Browser"
            winget install Opera.Opera | Out-Host
            if ($?) { 
                Write-Host "Installed Opera" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform09.Add_Click( {
        try {
            Write-Host "Adobe.AdobeAcrobatReaderDC"
            winget install Adobe.AdobeAcrobatReaderDC | Out-Host
            if ($?) {
                Write-Host "Installed AdobeAcrobatReaderDC" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform10.Add_Click( {
        try {
            Write-Host "SumatraPDF.SumatraPDF"
            winget install SumatraPDF.SumatraPDF | Out-Host
            if ($?) { 
                Write-Host "Installed SumatraPDF" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform11.Add_Click( {
        try {
            Write-Host "Foxit.FoxitReader"
            winget install Foxit.FoxitReader | Out-Host
            if ($?) { 
                Write-Host "Installed FoxitReader" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform12.Add_Click( {
        try {
            Write-Host "IrfanView"
            winget install IrfanSkiljan.IrfanView | Out-Host
            if ($?) { 
                Write-Host "Installed IrfanView" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform13.Add_Click( {
        try {
            Write-Host "GIMP"
            winget install GIMP.GIMP | Out-Host
            if ($?) { 
                Write-Host "Installed GIMP" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform14.Add_Click( {
        try {
            Write-Host "Microsoft.Teams"
            winget install Microsoft.Teams | Out-Host
            if ($?) { 
                Write-Host "Installed Microsoft Teams" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform15.Add_Click( {
        try {
            Write-Host "Microsoft.Skype"
            winget install Microsoft.Skype | Out-Host
            if ($?) { 
                Write-Host "Installed Microsoft.Skype" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform16.Add_Click( {
        try {
            Write-Host "Microsoft.UpdateAssistant"
            winget install Microsoft.UpdateAssistant | Out-Host
            if ($?) { 
                Write-Host "Installed Microsoft.UpdateAssistant" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform17.Add_Click( {
        try {
            Write-Host "Microsoft.Office"
            winget install Microsoft.Office | Out-Host
            if ($?) { 
                Write-Host "Installed Microsoft.Office" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    }) 
$btnPerform18.Add_Click( {
        try {
            Write-Host "SQL Management Studio"
            winget install Microsoft.SQLServerManagementStudio | Out-Host
            if ($?) { 
                Write-Host "Microsoft.SQLServerManagementStudio" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    }) 
$btnPerform19.Add_Click( {
        try {
            Write-Host "Microsoft.VisualStudio.2019.Enterprise"
            winget install Microsoft.VisualStudio.2019.Enterprise | Out-Host
            if ($?) { 
                Write-Host "Microsoft.VisualStudio.2019.Enterprise" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform20.Add_Click( {
        try {
            Write-Host "Microsoft.VisualStudioCode"
            winget install "Microsoft.VisualStudioCode" | Out-Host
            if ($?) { 
                Write-Host "Microsoft.VisualStudioCode" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    }) 
$btnPerform21.Add_Click( {
        try {
            Write-Host "Microsoft.GitCredentialManagerCore"
            winget install "Microsoft.GitCredentialManagerCore" | Out-Host
            if ($?) { 
                Write-Host "Microsoft.GitCredentialManagerCore" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    }) 
$btnPerform22.Add_Click({

})
$btnPerform23.Add_Click( {
        ""
    }) 
$btnPerform25.Add_Click( {
        Write-Host "DISM Scanning OS Health"
        DISM /Online /Cleanup-Image /ScanHealth
        Start-Sleep -Seconds 5
            
        Write-Host "DISM Checking OS Health"
        DISM /Online /Cleanup-Image /CheckHealth
        Start-Sleep -Seconds 5

        write-HOst "DISM Cleanup OS & Restore Heath"
        DISM /Online /Cleanup-Image /RestoreHealth
        Start-Sleep -Seconds 5

        write-HOst "SFC SCAN"
        sfc.exe /scannow
    })
$btnPerform29.Add_click( {
        Try {
            Write-host "Microsoft.WindowsTerminal"
            winget install Microsoft.WindowsTerminal | Out-Host
            if ($?) {
                Write-Host "Installed Microsoft.WindowsTerminal" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform30.Add_Click( {
        Try {
            Write-host "Notepad++"
            winget install Notepad++.Notepad++ | Out-Host
            if ($?) {
                Write-Host "Installed Notepad++" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform31.Add_Click( {
        Try {
            Write-host "WinSCP"
            winget install WinSCP.WinSCP | Out-Host
            if ($?) {
                Write-Host "Installed WinSCP" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform32.Add_Click( {
        Try {
            Write-host "WinMerge"
            winget install WinMerge.WinMerge | Out-Host
            if ($?) {
                Write-Host "Installed WinMerge" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform33.Add_Click( {
        Try {
            Write-host "ShareX"
            winget install ShareX.ShareX | Out-Host
            if ($?) {
                Write-Host "Installed ShareX" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform34.Add_Click( {
        Try {
            Write-host "7 Zip Manager"
            winget install 7zip.7zip | Out-Host
            if ($?) {
                Write-Host "Installed 7 Zip Manager" -ForegroundColor Green

            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
$btnPerform35.Add_Click( {
        try {
            Write-Host "Voidtools.Everything"
            winget install Voidtools.Everything | Out-Host
            if ($?) { 
                Write-Host "Microsoft.VisualStudio.2019.Enterprise" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    
    })
$btnPerform24.Add_Click( {
        
    }) 
$btnPerform36.Add_Click( {
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
$btnPerform37.Add_Click( {
        UninstallWinApps
    })
$btnPerform38.Add_Click( {
        AddRunAsDifferentUserInContextMenu -Show
    })  
$btnPerform45.Add_Click( {
        ImportCertFromDir
    })  
$btnPerform46.Add_Click( {
        try {
            Write-Host "Upgrade All available Installed Applictions"
            winget upgrade --all | Out-Host
            if ($?) { 
                Write-Host "Microsoft.VisualStudioCode" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })   
$btnPerform47.Add_Click( {
     
    })
$btnPerform48.Add_Click( {
        try {
            Write-Host "Pswindowsupdate"
            choco install pswindowsupdate --confirm --force | Out-Host
            if ($?) { 
                Write-Host "Installed Pswindowsupdate" -ForegroundColor Green
            }
        }
        catch {
            [System.Windows.MessageBox]::Show("Error Occured Installation :  $_", 'Error Installation', 'OK', 'Error')
        }   
    })
[Net.ServicePointManager]::SecurityProtocol = $orig
$Form.ShowDialog() | out-null