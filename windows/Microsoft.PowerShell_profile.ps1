# Terminal prompt with https://starship.rs/
Invoke-Expression (&starship init powershell)

# Node version manager https://github.com/Schniz/fnm
fnm env --use-on-cd | Out-String | Invoke-Expression

# Some settings to make PowerShell more like Fish
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Chord "Alt+f" -Function ForwardWord
