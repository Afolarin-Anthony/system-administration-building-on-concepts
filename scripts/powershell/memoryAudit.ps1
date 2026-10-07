Get-CimInstance Win32_OperatingSystem |
>> Select-Object @{Name="TotalMemory"; Expression={[Math]::Round($_.TotalVisibleMemorySize * 1KB / 1GB, 2)}},
>> @{Name="FreeMemoryGB"; Expression={[Math]::Round($_.FreePhysicalMemory * 1KB / 1GB, 2)}}
