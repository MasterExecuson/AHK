#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Run D:\Users\User\Documents\Programação\AutoHotKey\function.ahk


#Include, function.ahk ;roda o script também quando é importado

; function1()


#SingleInstance Force

::Fiy::For your information
return

::ASW::aaaaaa
return

\::Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return


::enter::
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return

:*?:notepad:: 
; :o:notepad:: o O tira o espaço do final do resultado... 
; :r:notepad:: o R envia a string sem considerar !^+ como especiais... 
; :*:notepad:: o * faz o script acontecer se\m o espaço... 
Run Notepad.exe
return

#IfWinActive *at.txt
::ss::dfsdfsfdsssssssdfsdfsdfsxcasdsdasdasdasdassdasasdasdasdasdasdasdasddasdasdasdvsxv
return




#IfWinActive *at.txt
::ss::dfsdfsfdsssssssdfsdfsdfsxcasdsdasdasdasdassdasasdasdasdasdasdasdasddasdasdasdvsxv
return
