#! /usr/bin/env python

import sys
import datetime
import misc

time = datetime.datetime(15,1,1,1)

print '# Python code'
print '# Author: Bruno Turcksin'
print '# Date: %s' %time.today()
print

classcomment,filename = misc.extract_filename(sys.argv[1],'py')
comment = '#'
for i in range(0,76) :
    comment += '-'
comment += '#'
print comment
line = '##'+classcomment+'##'
print line
print comment
print
print '""" """'
print
print 'class '+filename[0:-1]+'(object) :'
print '  """ """'
print
print '  def __init__(self) :'
print 
print '    super('+filename[0:-1]+',self).__init__()'
