#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  

lastHostKey = 
antilastHostKey = 
antiantilastHostKey = 

<^>!p::
   Send, |
return

<^>!a::
   Send, \
return

~Shift:: ;; O til faz com que o shift seja enxergado pelo sistema!
	KeyWait, Shift


   
	if(A_TimeSinceThisHotkey < 300 and ((A_PriorKey = "LShift" or A_PriorKey = "RShift"  ) and antilastHostKey = "Shift")){
      Send, {BackSpace}{{}
      antiantilastHostKey = Shift
      antilastHostKey = 
      lastHostKey = 
   }else if(A_TimeSinceThisHotkey < 300 and ((A_PriorKey = "LShift" or A_PriorKey = "RShift"  ) and lastHostKey = "Shift")){
      Send, {BackSpace}[
      antilastHostKey = Shift
      lastHostKey = 
      antiantilastHostKey = 
   }else if (A_TimeSinceThisHotkey < 300 and (A_PriorKey = "LShift" or A_PriorKey = "RShift" ) and antiantilastHostKey = "Shift") {
		Send, {BackSpace}(
      antilastHostKey = 
      lastHostKey = Shift
      antiantilastHostKey = 
	}else if (A_TimeSinceThisHotkey < 300 and (A_PriorKey = "LShift" or A_PriorKey = "RShift" )) {
		Send, (
      antilastHostKey = 
      lastHostKey = Shift
      antiantilastHostKey = 
	}else{
      lastHostKey = 
      antilastHostKey=
      antiantilastHostKey = 
   }
return

