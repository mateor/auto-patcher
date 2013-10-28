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

# This can takes filenames of patches to split as params. It handles smali, text, .rc, .xml files (clumsily)

import sys,os,re

patches = []
rx = re.compile('^diff -Npru.*/(.*)\.smali$')
rxml = re.compile('^diff -Npru.*/(.*)\.xml$')
rc = re.compile('^diff -Npru.*/(.*)\.rc$')
rtext = re.compile('^diff -Npru.*/(.*)\.txt$')

if (len(sys.argv) > 1):
    for arg in sys.argv:
        patches.append(arg)
    del patches[0]
else:
    patches = [ 'core', 'framework', 'services', 'telephony-common', 'Mms.apk' ]

print
print "Files to be split are: "
print patches
print ""

for p in patches:
    name_in = p + '.patch'
    fmt_name_out = p + '_%d_%s.patch'
   
    fin = open(name_in, 'rb')
    i = 0
    fout = None
    for l in fin.readlines():
        m = rx.match(l)
        n = rxml.match(l)
        o = rc.match(l)
        p = rtext.match(l)
        if m:
            name_out = fmt_name_out % (i, m.group(1))
            print "Creating: '%s'" % name_out
            fout = open(name_out, 'wb')
            i += 1
        if n:
            name_out = fmt_name_out % (i, n.group(1))
            print "Creating: '%s'" % name_out
            fout = open(name_out, 'wb')
            i += 1
        if o:
            name_out = fmt_name_out % (i, o.group(1))
            print "Creating: '%s'" % name_out
            fout = open(name_out, 'wb')
            i += 1
        if p:
            name_out = fmt_name_out % (i, p.group(1))
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
