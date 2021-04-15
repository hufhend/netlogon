'  *******************************************
'  Uninstall Script MS Java Virtual Machine
'  begin     : Wed Feb 06 2002
'  copyright : (c) 2002 Vaclav Dvorsky
'  email     : hufhendr@sendmail.cz
'  $Id: MS_JVM.uninstall.vbs, v1.02 06/03/2002
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

WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Microsoft\Java VM\System Properties\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Microsoft\Java VM\Security\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Microsoft\Java VM\RNIModuleFlags\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Microsoft\Java VM\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Advanced Options\JAVA_VM\CONSOLE\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Advanced Options\JAVA_VM\JIT\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Advanced Options\JAVA_VM\LOGGING\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Microsoft\Internet Explorer\Advanced Options\JAVA_VM\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Microsoft\Code Store Database\Global\Namespace\Java Packages\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{08B0E5C0-4FCB-11CF-AAA5-00401C608500}\")
WSHShell.RegDelete ("HKEY_LOCAL_MACHINE\Software\Classes\DhModule\")

set WSHShell = nothing

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''



