#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  


#Include, ChangeApplicationImpl.ahk


^Numpad0::
  switchExe("CiscoCollabHost.exe","webex")
return

^Numpad1::
  switchExe("chrome.exe","chrome")
return

^Numpad2::
  switchClass("CabinetWClass","explorer.exe","taranexplorers")
return

^Numpad3::
  switchClass("SunAwtFrame","idea64.exe","intelliJ")
return

^Numpad4::
  switchExe("ONENOTE.EXE","oneNote")
return

^Numpad5::
  switchExe("Ssms.exe","microsoftSQLServer")
return

^Numpad6::
  switchExe("Postman.exe","postMan")
return

^Numpad7::
  switchExe("Code.exe","vsCode")
return

^Numpad8::
  switchExe("cmd.exe","cmdGroup")
return

^NumpadDot::
  switchExe("OUTLOOK.EXE","outlook")
return


