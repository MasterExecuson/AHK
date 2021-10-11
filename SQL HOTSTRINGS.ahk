#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  


SetTitleMatchMode, RegEx
#IfWinActive, hadoop|Hadoop|HADOOP|SQL|Sql|sql ; https://regex101.com/r/hg0xJ8/1

Hotstring("EndChars", "`t")
SetKeyDelay, 0

:C:S::    
Send, SELECT * FROM table{ShiftDown}{CtrlDown}{Left}{ShiftUp}{CtrlUp}
Return

:C:A:: 
Send, ALTER TABLE table ADD column_name datatype{Left 25}{ShiftDown}{CtrlDown}{Left}{ShiftUp}{CtrlUp}
Return

:C:U::
Send, UPDATE table SET cloumn=value WHERE {Left 24}{ShiftDown}{CtrlDown}{Left}{ShiftUp}{CtrlUp}
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
