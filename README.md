# AutomatedFileBackup

## Description
This PowerShell script automates the backup of important files from a source directory to a backup directory. The script runs daily, creating timestamped backups to ensure data safety and integrity.

## Features
- **Daily Backup**: Automatically backs up files daily at a specified time.
- **Timestamped Backups**: Creates new backup directories with timestamps.
- **Error Handling**: Ensures the backup directory exists before performing the backup.

## Prerequisites
- Windows PowerShell
- Administrator privileges

## Installation
1. Customize the source and backup directories (`$sourceDir` and `$backupDir`) with your own paths.
2. Download and save the script as `AutomatedFileBackup.ps1`.
3. Run the script in PowerShell with administrator privileges to set up the scheduled task.

## Usage
- The script will automatically back up files from the source directory to the backup directory daily at 2:00 AM.
- Each backup is saved in a new directory with a timestamp.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
