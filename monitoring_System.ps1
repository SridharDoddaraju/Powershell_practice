# Set threshold values
$cpuThreshold = 90  # 90% CPU usage
$memoryThreshold = 80  # 80% memory usage

# Get current system resource usage
$cpuUsage = (Get-WmiObject -Class Win32_PerfFormattedData_PerfOS_Processor).PercentProcessorTime
$memoryUsage = (Get-Counter '\Memory\% Committed Bytes In Use').CounterSamples.CookedValue

# Check if usage exceeds thresholds
if ($cpuUsage -gt $cpuThreshold) {
    Send-MailMessage -To "admin@example.com" -Subject "High CPU Usage Alert" -Body "CPU usage is high ($cpuUsage%)"
}

if ($memoryUsage -gt $memoryThreshold) {
    Send-MailMessage -To "admin@example.com" -Subject "High Memory Usage Alert" -Body "Memory usage is high ($memoryUsage%)"
}
