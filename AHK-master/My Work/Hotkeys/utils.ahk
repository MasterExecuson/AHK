#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force 




cutSelected(){
    Clipboard =
    Send, ^x
    Sleep, 50
    if (!Clipboard){
        Send ^x
        ClipWait
    }
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
