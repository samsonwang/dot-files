#SingleInstance Ignore

; SetTitleMatchMode, 2
; DetectHiddenWindows, On

; If WinExist("caps2ctrl" . "ahk_class AutoHotkey")
;    Return

Process, Exist, caps2ctrl
; if ErrorLevel
{
;     TrayTip caps2ctrl, caps2ctrl is already running
    Return
}

SetWorkingDir %A_ScriptDir%
if not A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"
    ; (A_AhkPath is usually optional if the script has the .ahk extension.) You would typically check first.
    TrayTip caps2ctrl, caps2ctrl running
}

;#IfWinActive emacs  ; if in emacs
+Capslock::Capslock ; make shift+Caps-Lock the Caps Lock toggle
Capslock::Control   ; make Caps Lock the control button
;#IfWinActive        ; end if in emacs
