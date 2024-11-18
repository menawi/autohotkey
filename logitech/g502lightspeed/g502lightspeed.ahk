#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir%A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, on.ico

MButton::AltTabMenu
WheelDown::AltTab
WheelUp::ShiftAltTab

^!r:: Reload  ; Ctrl+Alt+R

WheelRight:: Send ^ {
Tab } ; Switch to the next tab
WheelLeft:: Send ^ + {
Tab } ; Switch to the previous tab

XButton1:: Send, ^ c
XButton2:: Send, ^ v

F10::
    Suspend, Toggle
    if A_IsSuspended
        Menu, Tray, Icon, off.ico  ; Change icon to "off" when suspended
    else
        Menu, Tray, Icon, on.ico   ; Change icon back to "on" when resumed
return