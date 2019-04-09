# Paste Windows Path with the correct bars ( "/" instead of "\ " )

R, Python and many other programming languages won't accept paths in the Windows format (with right-leaning bars "\ "). For this, I've made an AutoHotKey Script to paste paths correctly.

* Press Win+V to replace \\ with / in the text copied in the clipboard, and paste the replaced text *

The service when run, runs in the background and can be accessed in the task bar. You can set it to auto-open on windows by putting the executable (or the .ahk file if you have AutoHotKey installed) by doing the following:

1- Press Win+R
2- Type "shell:startup" and press Enter or click OK.
3- Put the script (or a shortcut to the script) in the path that opens.
