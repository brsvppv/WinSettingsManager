
#$MainForm.Hide()
[xml]$XAML = @"
    <Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        Title="Bulk Package Install" Height="365" Width="350" ResizeMode="NoResize" WindowStartupLocation="CenterScreen" ShowInTaskbar="True">
        <Grid Margin="5,5,5,5">
        <Label Name="lblPackageManager" Content="Package Manager&#x9;" HorizontalAlignment="Left" Margin="10,8,0,0" VerticalAlignment="Top"/>
        <ComboBox Name="cbxPackageManager" HorizontalAlignment="Left" Margin="125,9,0,0" VerticalAlignment="Top" Width="213" SelectedIndex="0">
            <ComboBoxItem Content="Winget"/>
            <ComboBoxItem Content="Chocolyte"/>
        </ComboBox>
        <ListBox Name="ListAvailablePackages" Width="160" Margin="0,46,0,31"  HorizontalAlignment="Left"/>
        <ListBox Name="ListPackagesToInstall" Width="160" Margin="0,46,5,31" HorizontalAlignment="Right"/>
        <Button Name="btnAddPackageToInstall" Content=">" VerticalAlignment="Top" Height="132" Width="18" Margin="160,46,162,0"/>
        <Button Name="btnRemovePackgeFromInstall" Content="&lt;" Margin="160,176,162,31"  Height="132" Width="18"/>
        <Button Name="btnPerformBlukInstallation" Content="Perform Bulk Installation" Margin="5,313,5,0" VerticalAlignment="Top" Height="20"/>

    </Grid>
</Window>
"@
#Read XAML
$reader = (New-Object System.Xml.XmlNodeReader $xaml) 
try { $Settings = [Windows.Markup.XamlReader]::Load( $reader ) }
catch { Write-Host "Unable to load Windows.Markup.XamlReader"; exit }
# Store Form Objects In PowerShell
$xaml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name ($_.Name) -Value $Settings.FindName($_.Name) }
        
        
$Settings.ShowDialog() | out-null
#$Settings.Add_Closing({ })
