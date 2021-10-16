#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force 

switchExplorerTabs()
{
  IfWinNotExist, ahk_class CabinetWClass
    Run, explorer.exe
  GroupAdd, taranexplorers, ahk_class CabinetWClass
  if WinActive("ahk_exe explorer.exe"){
    GroupActivate, taranexplorers, r
  }else{
    WinActivate ahk_class CabinetWClass ;you have to use WinActivatebottom if you didn't create a window group.
  }
	return
}

switchChormeTabs(){
  IfWinNotExist, ahk_exe chrome.exe
    Run, chrome.exe 
  if WinActive("ahk_exe chrome.exe"){
    Sendinput ^{tab}
  }else{
    WinActivate ahk_exe chrome.exe
  }
}

switchChormePages(){
  IfWinNotExist, ahk_exe chrome.exe
    Run, chrome.exe 
	GroupAdd, viniChromes, ahk_exe chrome.exe
  if WinActive("ahk_exe chrome.exe"){
    GroupActivate, viniChromes, r
  }else{
    WinActivate ahk_exe chrome.exe
  }
}

