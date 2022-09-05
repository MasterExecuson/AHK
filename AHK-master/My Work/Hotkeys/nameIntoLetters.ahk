#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force 

 #Include utils.ahk

+F7::   

    oldClipboard := Clipboard
    getClipBoard() 
   Send, {Delete}

    cont = 0  
    StringLen, size, Clipboard 
   Loop, %size%                                                
   {
      cont += 1
      output := SubStr(Clipboard,cont,1)
      StringUpper, output, output
      Send, %output% {Enter}
   }
    Clipboard := oldClipboard
RETURN


; getClipBoard(){
;     Clipboard =
;     Send, ^C
;     Sleep, 50
;     if (!Clipboard){
;         Send ^c
;         ClipWait
;     }
;     return
; }





