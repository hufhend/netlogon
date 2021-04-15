'  **********************************
'  jednoduche hlaseni na obrazovku
'  begin     : Tue Mar 5 2002
'  copyright : (c) 2002 Ales Sojka
'  email     : ales.sojka@cssz.cz
'  $Id: hlaseni.vbs, v1.00 05/03/2002
'  **********************************
'
'  --------------------------------------------------------------------
'  This program is free software; you can redistribute it and/or modify
'  it under the terms of the GNU General Public Licence as published by
'  the Free Software Foundation; either version 2 of the Licence, or
'  (at your option) any later version.
'  --------------------------------------------------------------------

datum = FormatDateTime (Now, vbShortDate)
cas = FormatDateTime (Now, vblongTime)
MsgBox cas & ", " & datum & ". " _
& vbCrlf & " " _
& vbCrlf & "INFO:"