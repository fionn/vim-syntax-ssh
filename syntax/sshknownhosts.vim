runtime! syntax/sshkey.vim

syn match sshKnownHostsMarker "^@cert-authority\>" nextgroup=sshKnownHostsHostname skipwhite
syn match sshKnownHostsMarker "^@revoked\>" nextgroup=sshKnownHostsHostname skipwhite

syn match sshKnownHostsHostname "!\?[a-zA-Z0-9.*\-:\[\]][^, \t]*" nextgroup=sshKnownHostsHostnameSeparator,sshKeyType skipwhite
syn match sshKnownHostsHostnameSeparator "," contained nextgroup=sshKnownHostsHostname

hi def link sshKnownHostsMarker Statement
hi def link sshKnownHostsHostname Identifier
hi def link sshKnownHostsHostnameSeparator Punctuation
