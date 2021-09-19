function GnuPGEncrypt {
	[CmdletBinding()]
	[OutputType([System.IO.FileInfo])]
	param
	(
		[Parameter(Mandatory)]
		[ValidateNotNullOrEmpty()]
		[ValidateScript({ Test-Path -Path $_ -PathType Container })]
		[string]$FolderPath,
		
		[Parameter(Mandatory)]
		[ValidateNotNullOrEmpty()]
		[SecureString]$SecurePassword,
		
		[Parameter()]
		[ValidateNotNullOrEmpty()]
		[string]$GpgPath = 'C:\Program Files (x86)\GnuPG\bin\gpg.exe'
			
	)
	process {
		try {
			Get-ChildItem -Path $FolderPath | ForEach-Object {
				Write-host "Encrypting File : [$($_.FullName)]"
				& $GpgPath --batch --passphrase $SecurePassword -c $_.FullName
			
			} 
			$EncryptedFiles = Get-ChildItem -Path $FolderPath | Where-Object {$_.Extension -eq "gpg"}
			foreach ($file in $EncryptedFiles)
			{
				write-host $file
			}
			Get-ChildItem -Path $FolderPath -Filter '*.gpg'
		}
		catch {
			Write-Error $_.Exception.Message
		}
		
	}
}
GnuPGEncrypt