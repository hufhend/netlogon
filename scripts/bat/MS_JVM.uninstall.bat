title Uninstall Microsoft Java Virtual Machine

rem  *******************************************
rem  Uninstall Script MS Java Virtual Machine
rem  begin     : Wed Feb 06 2002
rem  copyright : (c) 2002 Vaclav Dvorsky
rem  email     : hufhendr@sendmail.cz
rem  $Id: MS_JVM.uninstall.bat, v1.12 06/03/2002
rem  *******************************************

rem  --------------------------------------------------------------------
rem  This program is free software; you can redistribute it and/or modify
rem  it under the terms of the GNU General Public Licence as published by
rem  the Free Software Foundation; either version 2 of the Licence, or
rem  (at your option) any later version.
rem  --------------------------------------------------------------------

PATH=%PATH%

rem for more info http://support.microsoft.cz/kb.asp
rem Manually Uninstall and Reinstall Microsoft Virtual Machine [Q255846]
rem PSS ID Number: Q255846, Article last modified on 09-26-2001

if exist \\Akira\install\log\Java\%COMPUTERNAME%.MS_JVM.uninstall.log goto smula

  regsvr32 /u /s msjava.dll
  MS_JVM.uninstall.vbs

  cd %windir%
  echo a | rd /s java
  ren setdebug.exe setdebug.xxx
  ren clspack.exe clspack.xxx
  ren wjview.exe wjview.xxx
  ren jview.exe jview.xxx
  ren jautoexp.dat jautoexp.xxx
  cd system32
  ren javaprxy.dll javaprxy.xxx
  ren javacypt.dll javacypt.xxx
  ren msjdbc10.dll msjdbc10.xxx
  ren vmhelper.dll vmhelper.xxx
  ren jdbgmgr.exe jdbgmgr.xxx
  ren javasup.vxd javasup.xxx
  ren javaee.dll javaee.xxx
  ren javart.dll javart.xxx
  ren msjava.dll msjava.xxx
  ren msawt.dll msawt.xxx
  ren jit.dll jit.xxx
  ren dx3j.dll dx3j.xxx
  ren javaperm.hlp javaperm.xxx
  ren javasec.hlp javasec.xxx
  cd..
  cd inf
  ren java.inf java.xxx


  kontrola_uninstlall_MS_JVM_reg.vbs
  \\Akira\install\Win32\Microsoft\shutdown /L /R /T:20 /Y /C "Microsoft Java Virtual Machine: Uninstall"
  rem dir c: > c:\temp\test.txt
  pause

goto end
  
:smula
  
:end
