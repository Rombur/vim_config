# miscelleneous functions

def extract_filename(path,type) :

# extract the name of the file within the path
  if type == 'py' :
    classcomment = ' Class '
    end = 66
  else :
    classcomment = str()
    end = 0

  pos = 0
  path = path[::-1] # reverse the order of the string (go from everywhere to
# everywhere by step -1)
  while path[pos] != '.' :
    pos += 1

  pos += 1
  counter = 0
  filename = ' '
  while path[pos+counter] != '/' :
    filename += path[pos+counter]
    counter += 1

  filename = filename[::-1]
  classcomment += filename

  for i in range(counter,end) :
    classcomment += ' '

  return classcomment,filename
