libxname
========

``libxname`` is a super simple (probably useless) high level wrapper for Xlib's ``XStoreName()``. It was created for ease of use with automagic function wrappers with other languages (e.g. LuaAutoC, Ruby FFI, Perl XS), primarily for use with DWM (as dwm's "statusbar" is created from the root X window name). Now, you don't need to shell out to ``xsetroot -name`` every second!
