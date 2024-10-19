# Define source and backup directories
$sourceDir = "C:\ImportantFiles"
$backupDir = "D:\Backup"

# Create the backup directory if it doesn't exist
if (-Not (Test-Path -Path $backupDir)) {
    New-Item -ItemType Directory -Path $backupDir
}

# Function to perform the backup
function Backup-Files {
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    $destination = "$backupDir\Backup_$timestamp"
    Copy-Item -Path "$sourceDir\*" -Destination $destination -Recurse -Force
    Write-Output "Backup completed successfully. Files are backed up to $destination"
}

# Schedule the backup to run daily
$trigger = New-ScheduledTaskTrigger -Daily -At "02:00AM"
$action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-File `"$PSScriptRoot\AutomatedFileBackup.ps1`""
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "AutomatedFileBackup" -Description "Automates the backup of important files daily" -User "$env:UserName" -RunLevel Highest -Force

# Execute the backup function
Backup-Files
