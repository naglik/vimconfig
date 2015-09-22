function! GetAbsoluteTranslation(sTranslation)
  let sTest = a:sTranslation
  let asParts = split(sTest, "|")
  let sTransKey = asParts[0]
  let sFile = expand('%:p')
  let sFile = substitute(sFile, "\\.tpl", "", "g")
  let sUserdir = ''
  let sDir = ''
  if match(sTransKey, ":") >= 0
    return [sUserdir, sTransKey]
  endif
  let sFile = substitute(sFile, "^/usr/local/domainfactory/templates/", "", "")
  if match(sFile, "^km/") >= 0
    let sFile = substitute(sFile, "km/", "", "")
    let sDir = "t:"
  elseif match(sFile, "^order/") >= 0
    let sFile = substitute(sFile, "order/", "", "")
    let sDir = "x:order:"
  endif
  let sFile = substitute(sFile, "/", ":", "g")
  return [sUserdir, sDir . sFile . ':' . sTransKey]
endfunction

function! EditTranslation()
  let asTransKey = GetAbsoluteTranslation(GetNearestWord())
  let sUserdir = asTransKey[0]
  let sTransKey = asTransKey[1]
  let sFile = substitute(sTransKey, ":", "/", "g")
  let sFile = '/usr/local/domainfactory/'.sUserdir.'texte/'.sFile.'.de'
  "echo sFile
  execute ":split " . sFile
endfunction

function! GetNearestWord()
  let c = col ('.')-1
  let l = line('.')
  let ll = getline(l)
  let ll1 = strpart(ll,0,c)
  let ll1 = matchstr(ll1,"[^\"']*$")
  let ll2 = strpart(ll,c,strlen(ll)-c+1)
  let ll2 = strpart(ll2,0,match(ll2,"$\\|[\"']"))
  return ll1.ll2
endfunction

nmap <C-K> :call EditTranslation()<CR>
