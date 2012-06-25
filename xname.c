#include <X11/Xlib.h>
#include <stdio.h>
#include <stdlib.h>

void xname(char *msg)
{
	Display *dpy;
	Window rootwin;
	int scr;


	if(!(dpy=XOpenDisplay(NULL))) {
		fprintf(stderr, "ERROR: could not open display\n");
		exit(1);
	}
	scr = DefaultScreen(dpy);
	rootwin = RootWindow(dpy, scr);

	XStoreName(dpy, rootwin, msg);

	XCloseDisplay(dpy);

}
