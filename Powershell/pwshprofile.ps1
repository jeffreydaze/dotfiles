<#
.SYNOPSIS
This is the start of consolidating my powershell profile in one place. This profile should be used only with Powershell Core.
#>

# oh-my-posh theme
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/tokyonight_storm.omp.json' | Invoke-Expression

# Modules Neeed at runtime
Import-Module -Name Terminal-Icons
