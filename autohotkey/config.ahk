#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetCapsLockState, AlwaysOff
CapsLock & `::
GetKeyState, CapsLockState, CapsLock, T
if CapsLockState = D
    SetCapsLockState, AlwaysOff
else
    SetCapsLockState, AlwaysOn
KeyWait, ``
Return

Capslock & l:: SendInput {Right}
Capslock & h:: SendInput {Left}
CapsLock & e:: SendInput {End}
CapsLock & a:: SendInput {Home}
CapsLock & i:: SendInput ^{Right}
CapsLock & u:: SendInput ^{Left}
CapsLock & j::
    if (GetKeyState("Alt", "P"))
        SendInput {Down 5}
    else
        SendInput {Down}
Return
CapsLock & k::
    if (GetKeyState("Alt", "P"))
        SendInput {Up 5}
    else
        SendInput {Up}
Return


; CapsLock & z:: SendInput ^z             ; Z = Cancel
; CapsLock & x:: SendInput ^x             ; X = Cut
; CapsLock & c:: SendInput ^c             ; C = Copy
; CapsLock & v:: SendInput ^v             ; V = Paste
; CapsLock & s:: SendInput ^s             ; S = Save
; CapsLock & y:: SendInput ^y             ; Y = Redo
; CapsLock & w:: SendInput ^w             ; close tab

; Capslock & `;:: SendInput ^`;           ; vscode toggle terminal
; Capslock & 1:: SendInput ^1             ; vscode terminal index 1 when focus terminal
; Capslock & 2:: SendInput ^2             ; vscode terminal index 2 when focus terminal
; Capslock & 3:: SendInput ^3             ; vscode terminal index 3 when focus terminal
; Capslock & 4:: SendInput ^4             ; vscode terminal index 4 when focus terminal
; Capslock & 5:: SendInput ^5             ; vscode terminal index 5 when focus terminal



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; delete line
CapsLock & BackSpace::
    SendInput +{Home}
    SendInput {delete}
Return

; insert line after
Capslock & Enter::
    SendInput {End}
    SendInput {Enter}
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; mouse
XButton1:: SendInput #^{Left}
XButton2:: SendInput #^{Right}
MButton:: SendInput #{Tab}

