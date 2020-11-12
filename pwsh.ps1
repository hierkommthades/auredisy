
# function OnViModeChange {
#     if ($args[0] -eq 'Command') {
#         # Set the cursor to a blinking block.
#         Write-Host -NoNewLine "`e[1 q"
#     } else {
#         # Set the cursor to a blinking line.
#         Write-Host -NoNewLine "`e[5 q"
#     }
# }

# function prompt {
#     $foreRgb = "15;15;15"
#     $backRgb = "240;240;240"
#     $style = [char]27 + "[38;2;" + $foreRgb + ";48;2;" + $backRgb + "m"
#     ...
#     $prompt = $style + $whatever + "> "
#     Write-Host $prompt -nonewline
#     return " "
#   }

# $colors = @{
#     # ConsoleColor enum has all the old colors
#     "Error" = [ConsoleColor]::DarkRed
  
#     # A mustardy 24 bit color escape sequence
#     "String" = "$([char]0x1b)[38;5;100m"
  
#     # A light slate blue RGB value
#     "Command" = "#8470FF"
#   }

#   Set-PSReadLineOption -Colors @{
#     ContinuationPromptColor = "`e[91m"
#     DefaultTokenColor = "`e[91m"
#   }
  
# $colors = @{
#     ContinuationPromptColor = "`e[91m"
#     DefaultTokenColor = "`e[91m"
#   }

# Set-PSReadLineOption -Colors $colors

# Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange -Colors $colors

Set-PSReadlineOption -Colors @{
    Type = "DarkCyan"
    Member = "Gray"
    String = "DarkGray"
    Number = "Yellow"
    Comment = "DarkGreen"
    Command = "Cyan"
    Keyword = "Cyan"
    Operator = "Gray"
    Variable = "Magenta"
    Parameter = "Gray"
}


