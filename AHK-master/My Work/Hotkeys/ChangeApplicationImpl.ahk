#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, Force 


switchChormeTabs(){
  IfWinNotExist, ahk_exe chrome.exe
    Run, chrome.exe 
  if WinActive("ahk_exe chrome.exe"){
    Sendinput ^{tab}
  }else{
    WinActivate ahk_exe chrome.exe
  }
}

switchExe(exe,appGroup){
  IfWinNotExist, ahk_exe %exe%
    Run, %exe%
	GroupAdd, %appGroup%, ahk_exe  %exe%
  if WinActive("ahk_exe " exe){
    GroupActivate, %appGroup%, r
  }else{
    WinActivate ahk_exe %exe% ;you have to use WinActivatebottom if you didn't create a window group.
  }
}

switchClass(appClass,exe,appGroup){
  IfWinNotExist, ahk_class %appClass%
    Run, %exe%
	GroupAdd, appGroup, ahk_class  %appClass%
   if WinActive("ahk_exe " exe){
    GroupActivate, appGroup, r
  }else{
    WinActivate ahk_class %appClass% ;you have to use WinActivatebottom if you didn't create a window group.
  }
}



