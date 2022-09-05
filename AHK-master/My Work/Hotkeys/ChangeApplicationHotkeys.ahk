#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force  


#Include, ChangeApplicationImpl.ahk


keyboard2:=1


^Numpad0::
>^Right::  ;; Right Control >^
  switchExe("CiscoCollabHost.exe","webex")
return

^Numpad1::
>^PgDn::
  switchExe("chrome.exe","chrome")
return

^Numpad2::
>^PgUp::
  switchClass("CabinetWClass","explorer.exe","taranexplorers")
return

^Numpad3::
>^Home::
  switchClass("SunAwtFrame","idea64.exe","intelliJ")
return

^Numpad4::
>^Pause::
  switchExe("ONENOTE.EXE","oneNote")
return

^Numpad5::
>^PrintScreen::
  switchExe("Ssms.exe","microsoftSQLServer")
return

^Numpad6::
>^BackSpace::
  switchExe("Postman.exe","postMan")
return

^Numpad7::
>^End::
  switchExe("Code.exe","vsCode")
return

^Numpad8::
>^F12::
  switchExe("cmd.exe","cmdGroup")
return

^NumpadDot::
>^Down::
    switchOutlookTabs()
return

^NumpadSub::
>^Del::
  switchExe("atmgr.EXE","atmgr")
return





^F10::
  if(keyboard2)
  {
    keyboard2=0
  }else{
    keyboard2=1
  }
return







#if (keyboard2) ;<--Everything after this line will only happen if keyboard2 is set to a value different than 0.

Numpad0::
  switchExe("CiscoCollabHost.exe","webex")
return

Numpad1::
  switchExe("chrome.exe","chrome")
return

Numpad2::
  switchClass("CabinetWClass","explorer.exe","taranexplorers")
return

Numpad3::
  switchClass("SunAwtFrame","idea64.exe","intelliJ")
return

Numpad4::
  switchExe("ONENOTE.EXE","oneNote")
return

Numpad5::
  switchExe("Ssms.exe","microsoftSQLServer")
return

Numpad6::
  switchExe("Postman.exe","postMan")
return

Numpad7::
  switchExe("Code.exe","vsCode")
return

Numpad8::
  switchExe("cmd.exe","cmdGroup")
return

NumpadDot::
    switchOutlookTabs()
return

NumpadSub::
  switchExe("atmgr.EXE","atmgr")
return
