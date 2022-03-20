#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  



SetKeyDelay, 0

::gc::
Send, git commit -m ""{NumpadLeft} ; {Left 1} sends left 1 time
Return 

::gcs::
Send, git commit -m --squash ""{NumpadLeft} ; {Left 1} sends left 1 time
Return 

::gca::
Send, git commit --amend -m ""{NumpadLeft} ; {Left 1} sends left 1 time
Return 

::gcaa::
Send, git commit --amend --no-edit ; amend to add files to previews commit
Return 

::ga::
Send, git status {Enter}
Send, git add -A 
return

::gs:: 
Send, git status {Enter}
return

::glog::
BlockInput, On
Send {text} git log --graph --all `-`-pretty=`%C(green)`%h`%x20`%Creset`%C(yellow`)`»`%Creset`%C(auto)`%d`%Creset`%C(white)`%x20`%f`%x20-`%x20`%Creset`%C(blue)`%cN,`%Creset`%C(yellow)`%x20`%cr  --decorate=short --date=relative 
;Send, {left 126}{BackSpace} ;Needed to remove aditional carachter on » creation
Send, {Enter}
BlockInput, Off
return

::glogold::
Send, git log --graph --all --oneline --decorate {Enter}
return

::gv::
Send, git checkout -{enter}
return

::gxs::
Send, git stash save DefaultStash {LShift down}{Left 13}{LShift up}
return

::gx::
Send, git stash
Return

::gxv::
Send, git stash list
return

::gxa::
Send, git stash apply 0 {LShift down}{Left 1}{LShift up}
return

::gb::
Send, git bisect start
Return

::gbr:: 
Send, git bisect bad ;r » reproved
Return

::gba::
Send, git bisect good ;a » approved
Return

::grb::
Send, git rebase iterationXX --iteractive {Left 14}{LShift down}{Left 2}{LShift up} ; squash
return

::grba::
Send, git rebase -i --autosquash
return



