#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  

#IfWinActive, ahk_exe idea64.exe 
#Include, RemoveJavaStringbreakformating.ahk


^up::
    RemoveFormattingUp()
return

^down::
    RemoveFormattingDown()
return


!A:: 
    Send, {AltDown}{F1}{AltUp}1 ;show current file in Tree
return 

#IfWinActive,ahk_class CiscoUIFrame
^up::
    RemoveFormattingUp()
return

^down::
    RemoveFormattingDown()
return

