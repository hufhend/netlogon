title Create Shortcut

rem  ******************************************
rem  Create Shortcut Script
rem  begin     : Feb 05 2002
rem  copyright : (c) 2002 Vaclav Dvorsky
rem  email     : vaclav.dvosky@cssz.cz
rem  $Id: zastupci.bat, v1.20 06/03/2002
rem  ******************************************

rem  --------------------------------------------------------------------
rem  This program is free software; you can redistribute it and/or modify
rem  it under the terms of the GNU General Public Licence as published by
rem  the Free Software Foundation; either version 2 of the Licence, or
rem  (at your option) any later version.
rem  --------------------------------------------------------------------

PATH=%PATH%;\\Akira\netlogon\scripts\java;\\Akira\netlogon\scripts\vbs

if exist \\Akira\install\log\zastupci\%COMPUTERNAME%.zastupci.log goto smula

  move %USERPROFILE%\"Nab�dka Start"\Programy\"Aplika�n� SW"\"N�pov�da" C:\Winnt\Profiles\"All Users"\"Nab�dka Start"\Programy\"Aplika�n� SW"\  
  del C:\Winnt\Profiles\"All Users"\"Nab�dka Start"\Programy\"Aplika�n� SW"\*.* /Q
  del %USERPROFILE%\"Nab�dka Start"\Programy\"Aplika�n� SW"\*.* /Q  
  rmdir %USERPROFILE%\"Nab�dka Start"\Programy\"Aplika�n� SW" /Q
  zastupci.js
  rem log.zastupci.vbs
  dir c: > \\Akira\install\log\zastupci\%COMPUTERNAME%.zastupci.log

goto end
  
:smula
  
:end
