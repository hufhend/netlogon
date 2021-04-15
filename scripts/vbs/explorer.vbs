'  ***********************************
'  nastaveni exploreru
'  begin     : Mon Mar 12 2001
'  copyright : (c) 2001 Ales Sojka
'  email     : ales.sojka@cssz.cz
'  $Id: explorer.vbs, v2.02 07/03/2002
'  ***********************************
'
'  --------------------------------------------------------------------
'  This program is free software; you can redistribute it and/or modify
'  it under the terms of the GNU General Public Licence as published by
'  the Free Software Foundation; either version 2 of the Licence, or
'  (at your option) any later version.
'  --------------------------------------------------------------------

Dim wscr

Set wscr = CreateObject("WScript.Shell")

main()

Sub main()
    On Error Resume Next

' upraveni casu pro spusteni scriptu na 10
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout", 10, "REG_DWORD"
        
    
' Stranka pro tisk
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\footer","b&b&p/&P"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\header","&b&b&d"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\margin_bottom","0.39400"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\margin_left","0.39400"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\margin_right","0.39400"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\PageSetup\margin_top","0.39400"

    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","http://10.20.1.1"

' Mala tlacitka
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\SmallIcons\SmallIcons", "yes"

' Panel nastroju
'   wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\WebBrowser\ITBarLayout",&H11,"REG_BINARY"

' Proxyna
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyOverride","10.20.*;10.30.*;<local>"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer","10.20.30.1:80"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 1, "REG_DWORD"

' Zjiöùovat soubory p¯i kaûdÈ n·vötÏvÏ str·nky
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\SyncMode5", 3, "REG_DWORD"

' Velikost Cache
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Cache\Content\CacheLimit",20480, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\5.0\Cache\Content\CacheLimit",20480, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders\Cache","C:\Temp\Temporary Internet Files"

' nastavuji zabezpeËnÌ mÌstnÌ sÌtÏ
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1200", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1201", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1405", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1004", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1001", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\CurrentLevel", 0, "REG_DWORD"

    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1200", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1201", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1405", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1004", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1001", 0, "REG_DWORD"
    wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\CurrentLevel", 0, "REG_DWORD"

End Sub
