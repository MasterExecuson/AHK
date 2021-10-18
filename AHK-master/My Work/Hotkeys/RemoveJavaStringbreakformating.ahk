#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  





RemoveFormattingUp(){
    oldClipboard := Clipboard
    CRLF := "`r`n"
    Send, {end}{home}{right}
    Send, {ShiftDown}{Left 1}{CtrlDown}{Left 3}{CtrlUp}{ShiftUp}
    getClipBoard()
    Loop, Parse, Clipboard,  `n, `r
    {
        RegExMatch(A_LoopField, "^(A-Za-z)(.*)$", Match)
        if Match1
            Send, {right}{up}
        else{
            Send, {Delete}
        }
    }
    Clipboard := oldClipboard
    return
}


RemoveFormattingDown(){
    oldClipboard := Clipboard
    CRLF := "`r`n"
    Send, {home}{end}{left}
    Send, {ShiftDown}{right 1}{CtrlDown}{right 3}{CtrlUp}{ShiftUp}
   
    getClipBoard()
    
    Loop, Parse, Clipboard,  `n, `r
    {
        RegExMatch(A_LoopField, "^(A-Za-z)(.*)$", Match)
        if Match1
            Send, {left}{up}
        else{
            Send, {Delete}
        }
    }
    Clipboard := oldClipboard
    return
}


getClipBoard(){
    Clipboard =
    Send, ^C
    Sleep, 50
    if (!Clipboard){
        Send ^c
        ClipWait
    }
    return
}