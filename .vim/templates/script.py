#! /usr/bin/env python

import sys
import datetime
import misc

time = datetime.datetime(15,1,1,1)
comment = '#'
for i in range(0,76) :
    comment += '-'
comment += '#'

print '#! /usr/bin/env python'
print comment
print '# Python code'
print '# Author: Bruno Turcksin'
print '# Date: %s' %time.today()
print comment
