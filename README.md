`vim-lsp-java` extends [vim-lsp](https://github.com/prabirshrestha/vim-lsp/) to add Java-specific
functionality. This is necessary because the Eclipse language server requires a number of
commands to be implemented on client, rather than server (see [here](https://github.com/eclipse/eclipse.jdt.ls/issues/376#issuecomment-333923685)).

Note that this plugin will not work until [PR #693](https://github.com/prabirshrestha/vim-lsp/pull/693)
is merged or equivalent functionality is introduced.
