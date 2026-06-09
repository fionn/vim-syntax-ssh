runtime! syntax/sshkey.vim

syn match sshKnownHostsMarker "^@cert-authority\>" nextgroup=sshKnownHostsHostname,sshKnownHostsHashedHostname skipwhite
syn match sshKnownHostsMarker "^@revoked\>" nextgroup=sshKnownHostsHostname,sshKnownHostsHashedHostname skipwhite

syn match sshKnownHostsHostname "!\?[a-zA-Z0-9.*\-:\[\]][^, \t]*" nextgroup=sshKnownHostsHostnameSeparator,sshKeyType skipwhite
syn match sshKnownHostsHostnameSeparator "," contained nextgroup=sshKnownHostsHostname

syn match sshKnownHostsHashedHostname "|1|[a-zA-Z0-9/+]\+=\{,2}|[a-zA-Z0-9/+]\+=\{,2}" nextgroup=sshKeyType skipwhite

hi def link sshKnownHostsMarker Statement
hi def link sshKnownHostsHostname Identifier
hi def link sshKnownHostsHostnameSeparator Punctuation
hi def link sshKnownHostsHashedHostname Identifier
