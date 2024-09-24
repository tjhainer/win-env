if (!(Test-Path -Path $PROFILE)) {
    New-Item -ItemType File -Path $PROFILE -Force
}
Set-Content -Path $PROFILE -Value ". $PWD\profile\profile.ps1"