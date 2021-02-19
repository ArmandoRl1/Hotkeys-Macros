SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#Persistent
#InstallKeybdHook
#useHook

; CMStorm Keyboard macro keys (M1-M5)
; IMPORTANT: TriggerZ CAN'T BE RUNNING or these won't work

;Google lookup selected text
F17::
OldClipboard:= Clipboard
Clipboard:= ""
Send, ^c ;copies selected text
ClipWait, 1
if ErrorLevel
{
    Send, ^c ;copies selected text
	ClipWait, 1
	if ErrorLevel
	{
		return
	}
}
Run http://www.google.com/search?q=%Clipboard%
Sleep 200
Clipboard:= OldClipboard
return

F18::
return

F19::
return

F20::
return

F21::
return

F22::
return

F23::
return

F24::
return

RAlt & v::
;Perform the RegEx find and replace operation,
;where "ABC" is the whole-word we want to replace.
    haystack := Clipboard
    needle := "\\"
    replacement := "/"
    result := RegExReplace(haystack, needle, replacement)

;Empty the Clipboard
    Clipboard =
;Copy the result to the Clipboard.
    Clipboard := result
;Wait for the Clipboard to fill.
    ClipWait
	
;Send (paste) the contents of the new Clipboard.
    Send, ^v

;Done!
    return

#u:: ;[Win]+[U]
;Perform the RegEx find and replace operation,
;where "ABC" is the whole-word we want to replace.
    haystack := Clipboard
    needle := "\\"
    replacement := "/"
    result := Format("{:U}",haystack)

;Empty the Clipboard
    Clipboard =
;Copy the result to the Clipboard.
    Clipboard := result
;Wait for the Clipboard to fill.
    ClipWait
	
;Send (paste) the contents of the new Clipboard.
    Send, ^v

;Done!
    return

#j:: ;[Win]+[J]
Send jupyter lab
return

#t::
Run wt
return

#n::
Run, "C:\Program Files (x86)\Notepad++\notepad++.exe"
return

; To disable F1 key in Excel
#IfWinActive ahk_class XLMAIN
F1::
return

#If MouseIsOver("ahk_class Shell_TrayWnd") or MouseIsOver("ahk_class Shell_SecondaryTrayWnd")
WheelUp::Send {Volume_Up} ;Increase volume when over command tray
WheelDown::Send {Volume_Down} ;Decrease volumen when over command tray
MouseIsOver(WinTitle) {
MouseGetPos,,, Win
return WinExist(WinTitle " ahk_id " Win)
}

SETMOUSETRAILS:=0x005D
GETMOUSETRAILS:=0x005E

#F12::
DllCall("SystemParametersInfo", UInt, GETMOUSETRAILS, UInt, 0, UIntP, nTrail, UInt, 0)
If (nTrail = 0)
	value:=7
else
	value:=0	
DllCall("SystemParametersInfo", UInt, SETMOUSETRAILS, UInt, value, Str, 0, UInt, 0)
return