w::Up
a::Left
s::Down
d::Right
LButton::Shift
RButton::x
#MaxThreadsPerHotkey 2
$MButton::
 {
   toggle:=!toggle
   if (toggle)
    {
	  sendinput, {z down}
    }
   else
    {
	  sendinput, {z up}
    }
 }
return
e::ExitApp
Space::LButton