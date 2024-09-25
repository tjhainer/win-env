$env:PATH += ';C:\Program Files\PowerShell\7' # had to temp include this for the session for pwsh will run
wt -w 0 -p "PowerShell" -d . pwsh -NoExit -Command ".\pwsh.ps1"
