syn region sshAuthorizedKeyOptions start="^[a-z]" end="\s" contains=sshAuthorizedKeyOptionKeyword,sshAuthorizedKeyOptionSeparator,sshAuthorizedKeyOptionAssignment,sshAuthorizedKeyOptionValue nextgroup=sshKeyType skipwhite oneline
syn match sshAuthorizedKeyOptionKeyword "[a-z-]\+" contained
syn match sshAuthorizedKeyOptionSeparator "," contained
syn match sshAuthorizedKeyOptionAssignment "=" contained
syn match sshAuthorizedKeyOptionValue '=\@<="\(\\\"\|[^"]\)*"' contained

runtime! syntax/sshkey.vim

hi def link sshAuthorizedKeyOptionKeyword Keyword
hi def link sshAuthorizedKeyOptionSeparator Punctuation
hi def link sshAuthorizedKeyOptionAssignment Operator
hi def link sshAuthorizedKeyOptionValue String
