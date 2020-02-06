function! s:handle_client_side_command(data) abort
  let l:method = a:data['method']
  if l:method != 'workspace/executeCommand'
    return 0
  endif

  let l:command = a:data['params']['command']
  let l:arguments = get(a:data['params'], 'arguments', [])

  if l:command ==# 'java.apply.workspaceEdit'
    for l:argument in l:arguments
      call lsp#utils#workspace_edit#apply_workspace_edit(l:argument)
    endfor
    return 1
  endif

  return 0
endfunction

call lsp#register_hook('before', 'java-language-server', 'request', 'workspace/executeCommand', function('s:handle_client_side_command'))
