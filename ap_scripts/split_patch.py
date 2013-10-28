#!/usr/bin/env python

# The MIT License (MIT)
#
# Copyright (c) 2012, 2013 a3955269, Mateor
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

import sys,os,re
 
rx = re.compile('^diff -Npru.*/(.*)\.smali$')
 
patches = [ 'core', 'framework', 'services' ]
 
for p in patches:
    name_in = p + '.patch'
    fmt_name_out = p + '_%d_%s.patch'
   
    fin = open(name_in, 'rb')
    i = 0
    fout = None
    for l in fin.readlines():
        m = rx.match(l)
        if m:
            name_out = fmt_name_out % (i, m.group(1))
            print "Creating: '%s'" % name_out
            fout = open(name_out, 'wb')
            i += 1
        if i > 0:
            fout.write(l)
   
    try:
        fin.close()
        fout.close()
    except:
        pass
