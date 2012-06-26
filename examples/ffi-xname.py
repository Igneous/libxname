#!/usr/bin/env python2
from ctypes import *
xname = CDLL("libxname.so")

xname.xname("Hello World!")
