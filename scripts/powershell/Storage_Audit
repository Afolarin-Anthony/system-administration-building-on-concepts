Get-Volume |
>> Where-Object DriveLetter |
>> Select-Object DriveLetter,
>> FileSystemLabel,
>> FileSystem,
>> @{Name="SizeGB"; Expression={[Math]::Round($_.Size / 1GB, 2)}},
>> @{Name="FreeGB"; Expression={[Math]::Round($_.SizeRemaining / 1GB, 2)}}
