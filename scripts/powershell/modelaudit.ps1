Get-CimInstance Win32_ComputerSystem |
>> Select-Object Manufacturer,
>> Model,
>> @{Name="MemoryGB"; Expression={[Math]::Round($_.TotalPhysicalMemory / 1GB, 2)}}
