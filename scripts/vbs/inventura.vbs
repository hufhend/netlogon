'  ************************************
'  inventura software
'  begin     : Fri May 18 2001
'  copyright : (c)2001 Vladislav Cermak
'  email     : inet@volny.cz
'  $Id: inventura.vbs, v3.20 18/05/2001
'  ************************************
'
'  --------------------------------------------------------------------
'  This program is free software; you can redistribute it and/or modify
'  it under the terms of the GNU General Public Licence as published by
'  the Free Software Foundation; either version 2 of the Licence, or
'  (at your option) any later version.
'  --------------------------------------------------------------------

Dim shell, fso, file, key, fname
Const ForWriting = 2

' Na praci s registry
Set shell = WScript.CreateObject("WScript.Shell")

' Na praci se soubory
Set fso = WScript.CreateObject("Scripting.FileSystemObject")

' Otevrit soubor pro zapis (2), v pripade neexistense vytvorit (True)

key =("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\ComputerName\ActiveComputerName\ComputerName")
Set file = fso.CreateTextFile("f:\inventura\" & shell.RegRead(key) & ".txt", 2, True)
file.Write "Jmeno pocitace - "
file.WriteLine shell.RegRead(key)

file.Write "Popis pocitace - "
key =("HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters\srvcomment")
file.WriteLine shell.RegRead(key)

file.Write "Frekvence procesoru - "
key = ("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0\~MHz")
file.WriteLine shell.RegRead(key)

file.Write "Cislo WinNT - "
key = ("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProductId")
file.WriteLine shell.RegRead(key)

file.Write "Cislo Office - "
key = ("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\9.0\Registration\ProductID\")
file.WriteLine shell.RegRead(key)

' Zavrit soubor
file.Close

' Uvolnit reference na pomocne objekty
Set fso = nothing
Set shell = nothing