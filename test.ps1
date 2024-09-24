$cmd = "Set-Content -Path `"$PROFILE`" -Value `". $PWD\profile\profile.ps1`""
&"C:\Program Files\PowerShell\7\pwsh.exe" -Command $cmd