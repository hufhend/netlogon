'  *******************************************
'  Uninstall Clean Registry Script
'  begin     : Wed Feb 06 2002
'  copyright : (c) 2002 Vaclav Dvorsky
'  email     : hufhendr@sendmail.cz
'  $Id: reg_clean.vbs, v1.01 06/03/2002
'  *******************************************
'
'  --------------------------------------------------------------------
'  This program is free software; you can redistribute it and/or modify
'  it under the terms of the GNU General Public Licence as published by
'  the Free Software Foundation; either version 2 of the Licence, or
'  (at your option) any later version.
'  --------------------------------------------------------------------

dim WSHShell
set WSHShell = CreateObject("WScript.Shell")
on error resume next

' Zruseni otravne hlasky "C:\Program nelze najit..." od HP1200
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurentVersion\Run\HPRestartApp")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\HPRestartApp")

set WSHShell = nothing

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''



