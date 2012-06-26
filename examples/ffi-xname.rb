#!/usr/bin/env ruby

require 'rubygems'
require 'ffi'

module Xname
	extend FFI::Library
	ffi_lib 'xname'
	attach_function :xname, [ :string ], :int
end

Xname.xname "Hello World!"
