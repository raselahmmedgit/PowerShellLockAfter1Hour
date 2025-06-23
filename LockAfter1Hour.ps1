# Wait for 1 hour (3600 seconds)
Start-Sleep -Seconds 3600

# Show Alert Message using MessageBox
Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show("System will be locked in 1 minute. Please save your work!", "Warning", "OK", "Exclamation")

# Wait for 1 minute before lock (60 seconds)
Start-Sleep -Seconds 60

# Lock the workstation
rundll32.exe user32.dll,LockWorkStation
