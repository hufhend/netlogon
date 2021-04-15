'  *********************************************************
'  kontrola spravneho odinstalovani MS JVM
'  begin     : Mon Mar 25 2002
'  copyright : (c) 2002 Vladislav Cermak
'  email     : vlado.cermak@cssz.cz
'  $Id: kontrola_uninstlall_MS_JVM_reg.vbs, v2.60 07/03/2002
'  *********************************************************
'
'  --------------------------------------------------------------------
'  This program is free software; you can redistribute it and/or modify
'  it under the terms of the GNU General Public Licence as published by
'  the Free Software Foundation; either version 2 of the Licence, or
'  (at your option) any later version.
'  --------------------------------------------------------------------


Set WshShell = WScript.CreateObject("WScript.Shell")
Set fso = WScript.CreateObject("Scripting.FileSystemObject")


On Error Resume Next

a = WshShell.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Java VM\Classpath")
b = WshShell.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Java VM\TrustedLibsDirectory")
c = WshShell.RegRead("HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\ComputerName\ActiveComputerName\ComputerName")

If a = "C:\WINNT\java\classes;." then

m = "Odinstalace se nezdarila! "
else
m = "OK "
end if

if b = "C:\WINNT\java\trustlib" then

x = "Odinstalace se nezdarila! "
else
x = "OK "
end if


Set file = fso.CreateTextFile("\\Akira\install\log\Java\" & c & ".MS_JVM.uninstall.log", 2, True)
 file.Write m
 file.WriteLine x
 file.Close

Set fso = nothing
Set shell = nothing