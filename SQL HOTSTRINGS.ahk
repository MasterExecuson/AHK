#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  

Hotstring("EndChars", "`t")

:C:S::
Send, SELECT * FROM table WHERE NULL=NULL
Return

:C:A::
Send, UPDATE table SET cloumn=value WHERE 
Return

:C:W::
Send, WHERE 
Return

:C:G::
Send, GROUP BY 
Return

:C:Q::
Send, ORDER BY 
Return
