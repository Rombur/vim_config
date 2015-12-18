if &filetype=="fortran"
  call inputsave()
  let license = input('Do you want to add GPL3 license ? ')
  call inputrestore()
  if license=="yes" || license=="y"
    let code_name = input('What is the name of the code ? ')
    :exe "0r! ~/.vim/templates/fortran.py %:p yes " . g:code_name
  else
    let license = input('Do you want to add Modified BSD license ? ')
    if license=="yes"|| license=="y"
      :exe "0r! ~/.vim/templates/fortran.py %:p yes MBSD"
    else
      :exe "0r! ~/.vim/templates/fortran.py %:p no "
    endif
  endif
elseif &filetype=="cpp"
  call inputsave()
  let header = input('Is it a class header ? ')
  call inputrestore()
  if header=="yes" || header=="y"
    call inputsave()
    let license = input('Do you want to add GPL3 license ? ')
    call inputrestore()
    if license=="yes" || license=="y"
      let code_name = input('What is the name of the code ? ')
      :exe "0r! ~/.vim/templates/hh.py %:p yes " . g:code_name
    else
      let license = input('Do you want to add Modified BSD license ? ')
      if license=="yes"|| license=="y"
        :exe "0r! ~/.vim/templates/hh.py %:p yes MBSD"
      else
        :exe "0r! ~/.vim/templates/hh.py %:p no "
      endif
    endif
  endif
elseif &filetype=="python"
  call inputsave()
  let class = input('Is it a class ? ')
  call inputrestore()
  if class=="yes" || class=="y"
    :exe "0r! ~/.vim/templates/py.py %:p "
  else
    :exe "0r! ~/.vim/templates/script.py %:p "
  endif
elseif &filetype=="plaintex"
  call inputsave()
  let main = input('Is it the main ? ')
  call inputrestore()
  if main=="yes" || main=="y"
    call inputsave()
    let presentation = input('Is it a presentation ? ')
    call inputrestore()
    if presentation=="yes" || presentation=="y"
      :exe "0r! ~/.vim/templates/presentation_tex.py %:p "
    else
      :exe "0r! ~/.vim/templates/main_tex.py %:p "
    endif
  endif
endif
