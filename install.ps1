$progs = @{
    pwsh = 'Microsoft.PowerShell'
    wt = 'Microsoft.WindowsTerminal'
    z = 'ajeetdsouza.zoxide'
}

foreach ($prog in $progs.Keys) {
    winget install --id $progs[$prog]
}
