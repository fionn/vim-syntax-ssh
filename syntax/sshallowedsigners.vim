syn match sshAllowedSignerPrincipal "!\?[a-zA-Z0-9.*?_+-]\+@[a-zA-Z0-9.*?]\+" nextgroup=sshAllowedSignerPrincipalSeparator,sshAllowedSignerOptions,sshKeyType skipwhite
syn match sshAllowedSignerPrincipalSeparator "," contained nextgroup=sshAllowedSignerPrincipal

syn region sshAllowedSignerOptions start="[a-z]" end="\s\@=" contains=@sshAllowedSignerOption nextgroup=sshKeyType skipwhite oneline contained
syn cluster sshAllowedSignerOption contains=sshAllowedSignerOptionKeyword,sshAllowedSignerOptionSeparator,sshAllowedSignerOptionAssignment,sshAllowedSignerOptionValue
syn keyword sshAllowedSignerOptionKeyword namespaces cert-authority valid-after valid-before contained
syn match sshAllowedSignerOptionSeparator "," contained
syn match sshAllowedSignerOptionAssignment "=" contained
syn match sshAllowedSignerOptionValue '"\(\\\"\|[^"]\)*"' contained

runtime! syntax/sshkey.vim

hi def link sshAllowedSignerPrincipal Identifier
hi def link sshAllowedSignerPrincipalSeparator Punctuation

hi def link sshAllowedSignerOptionKeyword Keyword
hi def link sshAllowedSignerOptionSeparator Punctuation
hi def link sshAllowedSignerOptionAssignment Operator
hi def link sshAllowedSignerOptionValue String
