title Windows Media Player 6.4

rem  ****************************************
rem  install script WMP6.4
rem  begin     : Thu Feb 07 2002
rem  copyright : (c) 2002 Vaclav Dvorsky
rem  email     : vaclav.dvosky@cssz.cz
rem  $Id: MediaPlayer6.4.bat, v1.2 07/03/2002
rem  ****************************************

rem  --------------------------------------------------------------------
rem  This program is free software; you can redistribute it and/or modify
rem  it under the terms of the GNU General Public Licence as published by
rem  the Free Software Foundation; either version 2 of the Licence, or
rem  (at your option) any later version.
rem  --------------------------------------------------------------------

PATH=%PATH%

if exist \\Akira\install\log\"Media Player"\%COMPUTERNAME%.WMP6.4.log goto smula

  copy \\Akira\install\Win32\Microsoft\"Media Player"\6.4\mpfull.exe c:\temp
  c:\temp\mpfull.exe /q
  echo OK > \\Akira\install\log\"Media Player"\%COMPUTERNAME%.WMP6.4.log

goto end

:smula

  rem echo %PATH%
  rem hlaseni2.vbs
  rem \\Akira\install\hlaseni.vbs

:end
