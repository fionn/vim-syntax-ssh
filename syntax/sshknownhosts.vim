runtime! syntax/sshkey.vim

syn match sshKnownHostsMarker "^@cert-authority\>" nextgroup=sshKnownHostsHostname skipwhite
syn match sshKnownHostsMarker "^@revoked\>" nextgroup=sshKnownHostsHostname skipwhite

syn match sshKnownHostsHostname "\(^\|\s\)\@<=[a-zA-Z0-9\.\-,:\[\]]\+\s\@=" nextgroup=sshKeyType skipwhite

hi def link sshKnownHostsMarker Statement
hi def link sshKnownHostsHostname Identifier
