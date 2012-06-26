#!/usr/bin/env luajit
local ffi = require("ffi")
ffi.cdef[[
int xname (const char *msg);
]]
local xname = ffi.load("xname")

xname.xname("Hello world!")
