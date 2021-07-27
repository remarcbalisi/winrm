Get-Disk | 
Where partitionstyle -eq 'raw' | 
Initialize-Disk -PartitionStyle MBR -PassThru |
New-Partition -DriveLetter F -UseMaximumSize | 
Format-Volume -FileSystem NTFS -NewFileSystemLabel "disk2" -Confirm:$false | 
New-Item -Path "F:\" -Name "VMs" -ItemType "directory"
