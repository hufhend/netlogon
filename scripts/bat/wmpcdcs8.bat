title Windows Media Player Codecs

rem  ***********************************
rem  install script WMP Codecs 
rem  begin     : Mon Feb 04 2002
rem  copyright : (c) 2002 Vaclav Dvorsky
rem  email     : vaclav.dvosky@cssz.cz
rem  $Id: wmpcdcs8.bat, v1.20 07/03/2002
rem  ***********************************

rem  --------------------------------------------------------------------
rem  This program is free software; you can redistribute it and/or modify
rem  it under the terms of the GNU General Public Licence as published by
rem  the Free Software Foundation; either version 2 of the Licence, or
rem  (at your option) any later version.
rem  --------------------------------------------------------------------

PATH=%PATH%

if exist \\Akira\install\log\wmpcdcs8\%COMPUTERNAME%.wmpcdcs8.log goto smula

  copy \\Akira\install\Win32\Microsoft\"Media Player"\wmpcdcs8.exe c:\temp
  c:\temp\wmpcdcs8.exe /q:a /r:n
  echo OK > \\Akira\install\log\wmpcdcs8\%COMPUTERNAME%.wmpcdcs8.log
  rem hlaseni.vbs
goto end

:smula

  rem echo %PATH%
  rem hlaseni2.vbs
  rem \\Akira\install\hlaseni.vbs

:end
