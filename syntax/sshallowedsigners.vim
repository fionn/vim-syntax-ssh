" I'd prefer to have a region for principal patterns split by commas, but it's
" not straightforward.
syn match sshAllowedSignerPrincipal "^[a-zA-Z0-9@\.\*!-]\+\(,[a-zA-Z0-9@\.\*!-]\+\)*" nextgroup=sshAllowedSignerOptions skipwhite

syn region sshAllowedSignerOptions start="\S" end="\s\@=" contains=sshAllowedSignerOptionKeyword,sshAllowedSignerOptionSeparator,sshAllowedSignerOptionAssignment,sshAllowedSignerOptionValue oneline contained
syn keyword sshAllowedSignerOptionKeyword namespaces contained
syn keyword sshAllowedSignerOptionKeyword cert-authority contained
syn keyword sshAllowedSignerOptionKeyword valid-after contained
syn keyword sshAllowedSignerOptionKeyword valid-before contained
syn match sshAllowedSignerOptionSeparator "," contained
syn match sshAllowedSignerOptionAssignment "=" contained
syn match sshAllowedSignerOptionValue '=\@<="\(\\\"\|[^"]\)*"' contained

runtime! syntax/sshkey.vim

hi def link sshAllowedSignerPrincipal Identifier

hi def link sshAllowedSignerOptionKeyword Keyword
hi def link sshAllowedSignerOptionSeparator Punctuation
hi def link sshAllowedSignerOptionAssignment Operator
hi def link sshAllowedSignerOptionValue String
