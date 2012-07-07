PREFIX = /usr
XLIBPATH != X -showDefaultLibPath 2>&1
XLIBPATH ?= $(shell X -showDefaultLibPath 2>&1)

all: xname

check:
	@echo "==> Building (check.c -> xname-test)"
	gcc -L${XLIBPATH} -lX11 -L. -lxname -o xname-test check.c
	@LD_LIBRARY_PATH=. ./xname-test "Dooooooooooooooooooooooooooooooooop"; \
	if [ $$? -ne 0 ];then echo "==> Check Failed (is X running?).";else echo "==> Check passed!";fi
	@echo "==> Removing xname-test"
	@rm -fv xname-test

clean:
	rm -f libxname.so xname.o

install: xname
	install -D libxname.so ${DESTDIR}${PREFIX}/lib/libxname.so
	install -D xname.h ${DESTDIR}${PREFIX}/include/xname.h

xname: xname.o
	@echo "==> Linking (xname.o -> libxname.so)"
	gcc -shared -Wl,-soname,libxname.so -L${XLIBPATH} -lX11 -o libxname.so xname.o
	@echo "==> Stripping libxname.so"
	strip -v libxname.so

xname.o: xname.c
	@echo "==> Compiling (xname.c -> xname.o)"
	gcc -O2 -o xname.o -Wall -I/usr/X11R6/include -fPIC -c xname.c
