title Install Microsoft Java Virtual Machine

rem  *****************************************
rem  Install Script MS Java Virtual Machine
rem  begin     : Thu Feb 07 2002
rem  copyright : (c) 2002 Vaclav Dvorsky
rem  email     : hufhendr@sendmail.cz
rem  $Id: MS_JVM.install.bat, v1.32 08/03/2002
rem  *****************************************

rem  --------------------------------------------------------------------
rem  This program is free software; you can redistribute it and/or modify
rem  it under the terms of the GNU General Public Licence as published by
rem  the Free Software Foundation; either version 2 of the Licence, or
rem  (at your option) any later version.
rem  --------------------------------------------------------------------

PATH=%PATH%

if exist \\Akira\install\log\Java\%COMPUTERNAME%.MS_JVM.inst.log goto smula

  copy \\Akira\install\Win32\Microsoft\"Java Virtual Machine"\Build3805\msjavx86.exe c:\temp
  c:\temp\msjavx86.exe /q:a /r:n
  echo %USERNAME%: OK > \\Akira\install\log\Java\%COMPUTERNAME%.MS_JVM.inst.log
  \\Akira\install\Win32\Microsoft\shutdown /L /R /T:20 /Y /C "Microsoft Java Virtual Machine: Install"
  pause

goto end

:smula

  rem echo %PATH%
  rem hlaseni2.vbs
  rem \\Akira\install\hlaseni.vbs

:end
