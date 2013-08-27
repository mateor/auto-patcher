 #!/usr/bin/env python

import sys,os,re

patches = []
rx = re.compile('^diff -Npru.*/(.*)\.smali$')

if (len(sys.argv) > 1):
    for arg in sys.argv:
        print arg
        patches.append(arg)
    del patches[0]
else:
    patches = [ 'core', 'framework', 'services', 'telephony-common', 'Mms.apk' ]
 
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
