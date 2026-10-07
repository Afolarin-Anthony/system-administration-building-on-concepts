Get-Process |
>> Where-Object {$_.WorkingSet64 -gt 100MB} |
>> Select-Object Name,
>> @{Name="PhysicalRAM_MB"; Expression={[Math]::Round($_.WorkingSet64 / 1MB, 2)}},
>> @{Name="VirtualMemory_MB"; Expression={[Math]::Round($_.PagedMemorySize64 / 1MB, 2)}} |
>> Sort-Object VirtualMemory_MB -Descending |
>> Format-Table -AutoSize
