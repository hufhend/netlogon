@echo off
rem   Prihlaseni k systemu, overeni verzi...
Title Pýihl çen¡ k syst‚mu, ovØýen¡ verz¡...

rem  ***********************************
rem  netlogon script
rem  begin     : Mon May 11 1998 
rem  copyright : (c) 2002 Vaclav Dvorsky
rem  email     : vaclav.dvosky@cssz.cz
rem  $Id: mount.cmd, v3.02 07/03/2002
rem  ***********************************

rem  --------------------------------------------------------------------
rem  This program is free software; you can redistribute it and/or modify
rem  it under the terms of the GNU General Public Licence as published by
rem  the Free Software Foundation; either version 2 of the Licence, or
rem  (at your option) any later version.
rem  --------------------------------------------------------------------

PATH=%PATH%;\\Akira\netlogon\;\\Akira\netlogon\scripts\bat;\\Akira\netlogon\scripts\vbs

echo Start Script Akira 04032002/01

net view \\Akira

net use f: /delete
net use g: /delete
net use h: /delete
net use i: /delete
net use l: /delete
net use x: /delete

echo.
echo *** Chyby, kter‚ se vyskytly a§ do tohoto okam§iku nejsou na z vadu
echo *** Odpojen¡ vçech s¡œovìch disk… ukonŸeno
echo.
net use f: \\Akira\Public
net use g: \\Akira\Dokumenty
net use l: \\Akira\e-DV
echo.
echo *** Pýipojen¡ s¡œovìch disk… f:\ a g:\ ukonŸeno
echo.

rem Nastaveni MS Internet Exploreru
explorer.vbs

rem  Kontrola a kopirovani novych verzi...
echo Kontrola a kop¡rov n¡ novìch verz¡...

xcopy \\Akira\install\current\16bit\*.exe c:\exe /d/u/f

rem echo Kontrola a kopirovani nove antivirove databaze...
rem xcopy \\Akira\install\current\Avast32\Vps*.* c:\temp /d/f
rem xcopy \\Akira\install\current\Avast32\Asw32*.* c:\temp /d/f
rem xcopy \\Akira\install\current\Avast32\avast32.ini c:\"Program Files"\"ALWIL Software"\Avast32\Data /u/d/f
rem echo Kontrola a kopirovani upgrade engine pro Avast32...
rem xcopy \\Akira\install\current\Avast32\Sp32*.* c:\temp /d/f

call zastupci.bat