$wingetProgs = @{
    pwsh = 'Microsoft.PowerShell'
    wt = 'Microsoft.WindowsTerminal'
    # z = 'ajeetdsouza.zoxide' -- install via scoop
}

# todo user apps - firefox, bitwarden. other apps more optional like vs code, git gui client
# todo anythink like node, go, etc. for languages

foreach ($prog in $wingetProgs.Keys) {
    winget install -e --id $wingetProgs[$prog] --accept-source-agreements --accept-package-agreements
}

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

$scoopProgs = @{
    nvim = 'neovim'
    z = 'zoxide'
    ripgrep = 'ripgrep'
    make = 'make'
    unzip = 'unzip'
    win32yank = 'win32yank'
    fd = 'fd'
    wget = 'wget'
    mingw = 'mingw'
    luarocks = 'luarocks'
    gzip = 'gzip'
}

# todo add scoop to path?
foreach ($prog in $scoopProgs.Keys) {
    scoop install main/$scoopProgs[$prog]
}
