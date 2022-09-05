#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force 

#Include, ../Hotkeys/utils.ahk

#IfWinActive, ahk_exe idea64.exe 
F1::
    oldClipboard := Clipboard
    Send, {home}{CtrlDown}{Right 2}{CtrlUp}{ShiftDown}{Right 1}{ShiftUp}
    cutSelected()
    StringUpper Clipboard, Clipboard
    Send, set%Clipboard%
    Send, {CtrlDown}{Right 1}{CtrlUp}{CtrlDown}{ShiftDown}{Right 2}{Left 1}{ShiftUp}{CtrlUp}{Del}{ShiftDown}{End}{left 1}{ShiftUp}({down 1}
    Clipboard := oldClipboard
    return


F2::
    oldClipboard := Clipboard
    Send, {CtrlDown}{left 1}{CtrlUp}{ShiftDown}{Right 1}{ShiftUp}
    cutSelected()
    StringUpper Clipboard, Clipboard
    Send, get%Clipboard%
    Send, {CtrlDown}{Right 1}{CtrlUp}()
    Clipboard := oldClipboard
    return