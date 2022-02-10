Import-Module posh-git
Import-Module oh-my-posh
$omp_config = Join-Path $PSScriptRoot ".\hieu.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
# Set-PoshPrompt iterm2
Set-PoshPrompt unicorn

Import-Module -Name Terminal-Icons

# PSReadLine
Import-Module PSReadLine
# Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
# Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
# Set-PSReadLineKeyHandler -Key Tab -Function Complete


# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

rename-item alias:\gcm gkm -force

function git-commit-m { git commit -m $args }
Set-Alias -Name gcm -Value git-commit-m
function gs {git status}
function git-add { git add }
Set-Alias -Name ga -Value git-add

