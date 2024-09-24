function Set-Nvim {
    C:/tools/neovim/nvim-win64/bin/nvim
}

function Set-Profile {
    powershell_ise.exe $profile
}

function Set-Refreshenv {
    Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
    refreshenv
}

function gpid {
    $hostAndPort = -join @(":"; $args)
    $($(netstat -aon | findstr $hostAndPort)[0] -split '\s+')[-1]
}

function kpid {
    param
    (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [string]	      
        $process
    )
    taskkill /f /pid $process
}

function kport {
    $process = gpid @args
    kpid $process
}

Set-Alias vim Set-Nvim
Set-Alias profile Set-Profile
Set-Alias refreshenv Set-Refreshenv
