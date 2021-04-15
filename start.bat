Title Trinity start script

rem  ***********************************
rem  network install script
rem  begin     : Thu Jan 15 2002 
rem  copyright : (c) 2002 Vaclav Dvorsky
rem  email     : vaclav.dvosky@cssz.cz
rem  $Id: start.bat, v1.26 08/03/2002
rem  ***********************************

rem  --------------------------------------------------------------------
rem  This program is free software; you can redistribute it and/or modify
rem  it under the terms of the GNU General Public Licence as published by
rem  the Free Software Foundation; either version 2 of the Licence, or
rem  (at your option) any later version.
rem  --------------------------------------------------------------------

rem  Spousteci script pod admin uzivatelem Trinity
echo Script Akira 04032002/02
echo.
echo Nastaveni casu a pripojeni install

net time \\Akira /set /yes

  PATH=%PATH%;\\Akira\netlogon\
  PATH=%PATH%;\\Akira\netlogon\scripts\bat
  PATH=%PATH%;\\Akira\netlogon\scripts\vbs
  PATH=%PATH%;\\Akira\netlogon\scripts\java

  call MS_JVM.uninstall.bat
  call MediaPlayer6.4.bat
  call wmpcdcs8.bat
  call MS_JVM.install.bat
  reg_clean.vbs

echo OK > \\Akira\install\log\%COMPUTERNAME%.live.log

rem hlaseni.vbs
rem Title Trinity start script
rem echo OK > c:\test.txt