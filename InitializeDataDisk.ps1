Get-Disk | Where-Object OperationalStatus -eq 'Offline'| 
         Initialize-Disk -PartitionStyle GPT -PassThru |
            New-Volume -FileSystem NTFS -DriveLetter D -FriendlyName 'New-Volume' |
            New-Item -Path "D:\" -Name "VMs" -ItemType "directory"
