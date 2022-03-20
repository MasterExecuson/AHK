#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  

#Include, ../Hotkeys/RemoveJavaStringbreakformating.ahk


^up::
   oldClipboard := Clipboard
    CRLF := "`r`n"
    Send, {end}{home}{right}
    Send, {ShiftDown}{CtrlDown}{Left 2}{CtrlUp}{ShiftUp}
    getClipBoard()
    Loop, Parse, Clipboard,  `n, `r
    {
        RegExMatch(A_LoopField, "^(A-Za-z)(.*)$", Match)
        if Match1
            Send, {right}{up}
        else{
            Send, {Delete}
            Break
        }
    }
    Clipboard := oldClipboard
return

^down::
     oldClipboard := Clipboard
    CRLF := "`r`n"
    Send, {home}{end}{CtrlDown}{left 1}{CtrlUp}
    Send, {ShiftDown}{CtrlDown}{right 3}{CtrlUp}{ShiftUp}
   
    getClipBoard()
    
    Loop, Parse, Clipboard,  `n, `r
    {
        RegExMatch(A_LoopField, "^(A-Za-z)(.*)$", Match)
        if Match1
            Send, {left}{up}
        else{
            Send, {Delete}
            Break
        }
    }
    Clipboard := oldClipboard
return