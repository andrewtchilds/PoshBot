
enum LogLevel {
    Debug
    Verbose
}

class BotConfiguration {

    [string]$LogDirectory = (Join-Path -Path $env:USERPROFILE -ChildPath '.poshbot')

    [string]$PluginDirectory = (Join-Path -Path $env:USERPROFILE -ChildPath '.poshbot')

    [string[]]$PluginRepository = @('PSGallery')

    [LogLevel]$LogLevel = [LogLevel]::Verbose

    [hashtable]$BackendConfiguration = @{
        Type = 'Slack'
    }

    [string[]]$BotAdmins = @()

    [char]$CommandPrefix = '!'

    [string[]]$AlternateCommandPrefixes = @('poshbot')

    [char[]]$AlternateCommandPrefixSeperators = @(':', ',', ';')

    [string[]]$SendCommandResponseToPrivate = @()

    [bool]$MuteUnknownCommand = $false
}