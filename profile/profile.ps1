if (Test-Path Alias:cd) {
    Remove-Alias -Name cd
}
Set-Alias -Name cd -Value z

Invoke-Expression (& { (zoxide init powershell | Out-String) })
