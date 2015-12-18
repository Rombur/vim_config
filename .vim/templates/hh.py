#! /usr/bin/env python
#----------------------------------------------------------------------------#
# Python code
# Author: Bruno Turcksin
# Date: 2011-07-24 17:32:27.918886
#----------------------------------------------------------------------------#

import sys
import datetime
import misc

classcomment,filename = misc.extract_filename(sys.argv[1],'hh')
class_name = classcomment[0:-1]
license = sys.argv[2]    

if license=='yes' :
  time = datetime.datetime(15,1,1,1)
  if sys.argv[3]!='MBSD' :
    print '/*'
    print 'Copyright (c) '+str(time.today().year)+', Bruno Turcksin.'
    print
    print 'This file is part of '+sys.argv[3]+'.'
    print
    print sys.argv[3]+' is free software: you can redistribute it and/or modify it under the terms '
    print 'of the GNU General Public License as published by the Free Software Foundation, '
    print 'either version 3 of the License, or (at your option) any later version.'
    print
    print sys.argv[3]+' is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; '
    print 'without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. ' 
    print 'See the GNU General Public License for more details.'
    print
    print 'You should have received a copy of the GNU General Public License along with '
    print sys.argv[3]+'. If not, see <http://www.gnu.org/licenses/>.'
    print '*/'
    print 
  else :
    print '/* Copyright (c) '+str(time.today().year)+', Bruno Turcksin.'
    print ' *'
    print ' * This file is subject to the Modified BSD License and may not be distributed'
    print ' * without copyright and license information. Please refer to the file'
    print ' * license.txt for the text and further information on this license.'
    print ' */'
    print
print '#ifndef _'+class_name.upper()+'_HH_'
print '#define _'+class_name.upper()+'_HH_'
print
print 'class '+class_name
print '{'
print '  public :'
print '    '+class_name+'();'
print 
print '  private :'
print '};'
print
print '#endif'
