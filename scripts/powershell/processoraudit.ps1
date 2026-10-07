Get-CimInstance Win32_Processor |
>> Select-Object Name,
>> NumberOfCores,
>> NumberOfLogicalProcessors,
>> VirtualizationFormwareEnabled



(Get-CimInstance Win32_ComputerSystem).HypervisorPresent
