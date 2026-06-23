<#
.SYNOPSIS
This is the start of consolidating my powershell profile in one place. This profile should be used only with Powershell Core.
#>

# oh-my-posh theme
#oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/tokyonight_storm.omp.json' | Invoke-Expression

# Starship config
$env:STARSHIP_CONFIG = "$HOME\dotfiles\starship\starship.toml"
Invoke-Expression (&starship init powershell)

# Modules Neeed at runtime
Import-Module -Name Terminal-Icons

# Importing Zoxide configuration
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Alias
Set-Alias ll ls
Set-Alias vi nvim
Set-Alias g git
Set-Alias grep findstr
Set-Alias lg lazygit

# fzf config for rose-pine theme
$ENV:FZF_DEFAULT_OPTS = @"
    --color=fg:#908caa,bg:#191724,hl:#ebbcba
    --color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
    --color=border:#403d52,header:#31748f,gutter:#191724
    --color=spinner:#f6c177,info:#9ccfd8
    --color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa
"@
