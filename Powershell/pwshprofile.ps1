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
Import-Module -Name PSReadline
Import-Module -Name CompletionPredictor 
# PSReadline Config
Set-PSReadLineOption -PredictionSource HistoryAndPlugin 
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# PSReadline Theme
# --- Rosé Pine ANSI helper ---
function global:RosePine([int]$r, [int]$g, [int]$b) {
    "$([char]0x1b)[38;2;${r};${g};${b}m"
}

Set-PSReadLineOption -Colors @{
    Comment            = RosePine 110 106 134   # muted   #6e6a86
    Keyword            = RosePine 49  116 143   # pine    #31748f
    String             = RosePine 246 193 119   # gold    #f6c177
    Operator           = RosePine 144 140 170   # subtle  #908caa
    Variable           = RosePine 156 207 216   # foam    #9ccfd8
    Command            = RosePine 196 167 231   # iris    #c4a7e7
    Parameter          = RosePine 235 188 186   # rose    #ebbcba
    Type               = RosePine 156 207 216   # foam    #9ccfd8
    Number             = RosePine 235 111 146   # love    #eb6f92
    Member             = RosePine 224 222 244   # text    #e0def4
    Default            = RosePine 224 222 244   # text    #e0def4
    Emphasis           = RosePine 235 111 146   # love    #eb6f92
    Error              = RosePine 235 111 146   # love    #eb6f92
    Selection          = "$([char]0x1b)[48;2;64;61;82m"   # highlight med bg #403d52
    InlinePrediction   = RosePine 110 106 134   # muted   #6e6a86
}

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
