#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force 

#Include, ../Hotkeys/RemoveJavaStringbreakformating.ahk


count = 0 

+F3::     
oldClipboard := Clipboard
    getClipBoard()                                                             ; Convert text to inverted
 Lab_Invert_Char_Out:= ""
 Loop % Strlen(Clipboard) {
    Lab_Invert_Char:= Substr(Clipboard, A_Index, 1)
    if Lab_Invert_Char is upper
       Lab_Invert_Char_Out:= Lab_Invert_Char_Out Chr(Asc(Lab_Invert_Char) + 32)
    else if Lab_Invert_Char is lower
       Lab_Invert_Char_Out:= Lab_Invert_Char_Out Chr(Asc(Lab_Invert_Char) - 32)
    else
       Lab_Invert_Char_Out:= Lab_Invert_Char_Out Lab_Invert_Char
 }
 Send %Lab_Invert_Char_Out%
    
    StringLen, size, Lab_Invert_Char_Out
    Send, {ShiftDown}{left %size%}{ShiftUp}
    Clipboard := oldClipboard

RETURN


F3::   
if(count == 0){
    oldClipboard := Clipboard
    getClipBoard()                                                       ; Convert text to upper
    StringUpper Clipboard, Clipboard
    Send %Clipboard%
    StringLen, size, Clipboard
    Send, {ShiftDown}{left %size%}{ShiftUp}
    Clipboard := oldClipboard
}else if(count ==1){
oldClipboard := Clipboard
    getClipBoard()                                                                ; Convert text to lower
 StringLower Clipboard, Clipboard
 Send %Clipboard%

    StringLen, size, Clipboard
    Send, {ShiftDown}{left %size%}{ShiftUp}
    Clipboard := oldClipboard
}else if(count ==2){
    oldClipboard := Clipboard
    getClipBoard()                                                          ; Convert text to capitalized
 StringUpper Clipboard, Clipboard, T
 Send %Clipboard%
    StringLen, size, Clipboard
    Send, {ShiftDown}{left %size%}{ShiftUp}
    Clipboard := oldClipboard
}
count += 1
if(count > 2){
    count := 0
}
RETURN



