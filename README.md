libxname
========

##Description:##
 ``libxname`` is a super simple (probably useless) high level wrapper for Xlib's ``XStoreName()``. It was created for ease of use with foreign function interfaces with other languages (e.g. LuaJIT FFI, Ruby FFI, Python Ctypes). ``libxname`` is primarily designed for use with DWM (as dwm's "statusbar" is created from the root X window name). Now, you don't need to shell out to ``xsetroot -name`` every second, write a proper script and fork to the background!

##Building:##
``libxname`` requires libx11/Xlib to build. Building is straightforward, there is no autotools/configuration script.. you should be able to get by with a simply ``make``. If you're running X11, and would like to check to see if the library can successfully set your root window name, use ``make check``.

##Installation:##
Using ``make install`` is supported, but primarily for use in a buildscript. Using DESTDIR/PREFIX should work, as long as it's defined as a make option and not an environment variable. (e.g. ``make DESTDIR=/tmp/pkgdir install``)
