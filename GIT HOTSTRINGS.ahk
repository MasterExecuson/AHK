#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  


::gc::
Send, git commit -m ""{NumpadLeft} ; {Left 1} sends left 1 time
Return 

::gm::
Send, git commit -m ""{NumpadLeft} ; {Left 1} sends left 1 time
Return 

::ga::
Send, git status {Enter}
Send, git add -A 
return

::gs::
Send, git status {Enter}
return

::glog::
Send, git log --graph --all --oneline --decorate {Enter}
return


