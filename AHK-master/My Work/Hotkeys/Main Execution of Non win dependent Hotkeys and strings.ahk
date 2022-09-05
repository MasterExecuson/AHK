#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  

#Include, keyRemapping.ahk

#Include, IntelliJHotKey.ahk
#IfWinActive ; deactivates window sensitivity
#Include, ChangeApplicationHotkeys.ahk
#IfWinActive
#Include, nameIntoLetters.ahk
#Include, ../Hotstrings/GITHOTSTRINGS.ahk

#Include, ../Hotstrings/Bem vindo ao Futuro.ahk

#Include, lettersCapitalization.ahk

#Include, set variable into setter.ahk



