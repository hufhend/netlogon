title Install SUN Java Virtual Machine

rem  *******************************************
rem  Install Script SUN Java Virtual Machine
rem  begin     : Thu Feb 07 2002
rem  copyright : (c) 2002 Vaclav Dvorsky
rem  email     : hufhendr@sendmail.cz
rem  $Id: SUN_Java.install.bat, v1.32 08/03/2002
rem  *******************************************

rem  --------------------------------------------------------------------
rem  This program is free software; you can redistribute it and/or modify
rem  it under the terms of the GNU General Public Licence as published by
rem  the Free Software Foundation; either version 2 of the Licence, or
rem  (at your option) any later version.
rem  --------------------------------------------------------------------

PATH=%PATH%
set server=Akira

if exist \\%server%\install\log\Java\%COMPUTERNAME%.SUN_Java.inst.log goto smula

  mkdir c:\temp\Java
  xcopy \\%server%\install\Win32\Java\Disk1 c:\temp\Java /d /f
  c:\temp\Java\setup.exe -s -f1c:\temp\Java\setup.iss -f2\\%server%\install\log\Java\%COMPUTERNAME%.SUN_Java.inst.log
  echo Java 2 Runtime Environment, SE v1.4.0 >> \\%server%\install\log\Java\%COMPUTERNAME%.SUN_Java.inst.log
  echo a | rd /s c:\temp\Java
  \\%server%\install\Win32\Microsoft\shutdown /L /R /T:20 /Y /C "Java 2 Runtime Environment, SE v1.4.0: Install"
  pause

goto end

:smula

  rem echo %PATH%
  rem hlaseni2.vbs
  rem \\%server%\install\hlaseni.vbs

:end
