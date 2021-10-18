#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  


SetTitleMatchMode, RegEx
#IfWinActive, (hadoop|Hadoop|HADOOP|SQL|Sql|sql)(?!(.{0`,9999})Visual Studio Code)(?!(.{0`,9999}).java) ; https://regex101.com/r/OP0ovX/1

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

:C:I::    
    Send, INSERT INTO tableName (column1, column2) VALUES (value1, value2) {Left 44}{ShiftDown}{CtrlDown}{Left}{ShiftUp}{CtrlUp}
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

^;::
    oldClipboard := Clipboard
    CRLF := "`r`n"
	Clipboard =
	Output =
	Send +{Home}^c
	Sleep 50 ;Clipborad needs to wait a few seconds to work... 
	if !Clipboard
	{
		Send {Home}+{End}^c
		ClipWait
	}
	Loop, Parse, Clipboard,  `n, `r
	{
		RegExMatch(A_LoopField, "^(-?-?)(.*)$", Match)
		if Match1
			Output .= Match2 CRLF
		else
			Output .= "--" Match2 CRLF
	}
	if Match2
		Clipboard := SubStr(Output, 1, 0-StrLen(CRLF))
	else
		Clipboard := SubStr(Output, 1, -1-StrLen(CRLF))
	Sleep 50
	Send ^v{Down}
    Sleep 50

    Clipboard := oldClipboard
return

