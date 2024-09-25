$progs = @{
    pwsh = 'Microsoft.PowerShell'
    wt = 'Microsoft.WindowsTerminal'
    z = 'ajeetdsouza.zoxide'
}

# todo user apps - firefox, bitwarden. other apps more optional like vs code, neovim, git gui client

foreach ($prog in $progs.Keys) {
    winget install --id $progs[$prog]
}
