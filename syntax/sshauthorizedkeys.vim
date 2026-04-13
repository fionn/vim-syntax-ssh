syn region sshAuthorizedKeyOptions start="^" end="\s" contains=sshAuthorizedKeyOptionKeyword,sshAuthorizedKeyOptionSeparator,sshAuthorizedKeyoptionAssignment,sshAuthorizedKeyOptionValue oneline
syn match sshAuthorizedKeyOptionKeyword "[a-z-]\+" contained
syn match sshAuthorizedKeyOptionSeparator "," contained
syn match sshAuthorizedKeyOptionAssignment "=" contained
syn match sshAuthorizedKeyOptionValue '=\@<="\(\\\"\|[^"]\)*"' contained

runtime! syntax/sshkey.vim

hi def link sshAuthorizedKeyOptionKeyword Identifier
hi def link sshAuthorizedKeyOptionSeparator Punctuation
hi def link sshAuthorizedKeyOptionAssignment Operator
hi def link sshAuthorizedKeyOptionValue String
