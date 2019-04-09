#v:: ;[Win]+[V]
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