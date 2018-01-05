if &filetype=="python"
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
