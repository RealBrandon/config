# Change the starting directory to D:\
Set-Location D:\

# Rebind rm to moving a file to the recycle bin
# Extra module 'Recycle' is needed
Set-Alias rm Remove-ItemSafely -Description Installed.Module.Recycle -Option AllScope

# Make PowerShell commands more Bash-like
Set-Alias touch New-Item -Option AllScope
Set-Alias unzip Expand-Archive -Option AllScope
Set-Alias zip Compress-Archive -Option AllScope

# Shortcuts for programs
Set-Alias peazip 'C:\Program Files\PeaZip\peazip.exe' -Option AllScope
Set-Alias vim 'C:\Program Files (x86)\Vim\vim90\vim.exe' -Option AllScope
Set-Alias ipmiutil 'C:\Program Files (x86)\ipmiutil\ipmiutil.exe' -Option AllScope
Set-Alias exp explorer.exe -Option AllScope

