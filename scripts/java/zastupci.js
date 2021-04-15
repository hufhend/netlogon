//  *****************************************************
//  Java Create Shortcut Script
//  begin     : Thu Feb 05 2002
//  copyright : (c) 2002 Vaclav Dvorsky
//  email     : vaclav.dvosky@cssz.cz
//  thx       : Libor Smid, Milan Martinec, Jiri Kohlicek
//  $Id: zastupci.js, v1.01 05/03/2002
//  *****************************************************

//  --------------------------------------------------------------------
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public Licence as published by
//  the Free Software Foundation; either version 2 of the Licence, or
//  (at your option) any later version.
//  --------------------------------------------------------------------

MyShell=WScript.CreateObject("WScript.Shell");

// Definice promennych 

cesta="c:\\Program Files\\Aplikaèní SW";
plocha="c:\\WINNT\\Profiles\\All Users\\Plocha";
nabidka="c:\\WINNT\\Profiles\\All Users\\Nabídka Start\\Programy\\Aplikaèní SW";

// Vytvoreni zastupce v nabidce Start

zastupce=MyShell.CreateShortcut(nabidka+"\\Název programu.lnk");
zastupce.IconLocation=cesta+"\\program.exe";
zastupce.TargetPath=cesta+"\\program.exe";
zastupce.WorkingDirectory=cesta;
zastupce.Save();
