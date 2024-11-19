#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

; ---
; SetWorkingDir%A_ScriptDir%  ; Ensures a consistent starting directory. ; this caused error for some reason
Menu, Tray, Icon, on.ico
; ---

MButton::AltTabMenu
WheelDown::AltTab
WheelUp::ShiftAltTab

^!r:: Reload  ; Ctrl+Alt+R

; --- logitech g502 lightspeed mouse wheel is supersensitive and needs delay
; WheelRight:: Send ^ {
; Tab } ; Switch to the next tab
; WheelLeft:: Send ^ + {
; Tab } ; Switch to the previous tab
; ---

WheelRight::
    Sleep, 250
    Send, ^{Tab}  ; Send Ctrl+Tab
return

WheelLeft::
    Sleep, 250
    Send, ^+{Tab}  ; Send Ctrl+Shift+Tab
return

; --- Currently using logitech GHub for this instead
; XButton1:: Send, ^ c
; XButton2:: Send, ^ v
; ---

; --- alt shift a => Suspend script
!+a::
    Suspend, Toggle
    if A_IsSuspended
        Menu, Tray, Icon, off.ico  ; Change icon to "off" when suspended
    else
        Menu, Tray, Icon, on.ico   ; Change icon back to "on" when resumed
return
; ---
