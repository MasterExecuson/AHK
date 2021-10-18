#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  

#IfWinActive, (hadoop|Hadoop|HADOOP|SQL|Sql|sql)(?!(.{0`,9999})Visual Studio Code)(?!(.{0`,9999}).java) ; https://regex101.com/r/OP0ovX/1
#Include, RemoveJavaStringbreakformating.ahk


^up::
    RemoveFormattingUp()
return

^down::
    RemoveFormattingDown()
return