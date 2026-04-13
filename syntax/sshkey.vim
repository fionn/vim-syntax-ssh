setlocal iskeyword=_,-,a-z,A-Z,48-57

syn keyword sshKeyType ssh-ed25519
syn match sshKeyType "\<sk-ssh-ed25519@openssh\.com\>" nextgroup=sshKeyBase64Encoded skipwhite
syn keyword sshKeyType ecdsa-sha2-nistp256
syn keyword sshKeyType ecdsa-sha2-nistp384
syn keyword sshKeyType ecdsa-sha2-nistp521
syn match sshKeyType "\<sk-ecdsa-sha2-nistp256@openssh\.com\>" nextgroup=sshKeyBase64Encoded skipwhite
syn keyword sshKeyType ssh-rsa

syn match sshKeyBase64Encoded "\<AAAA[a-zA-Z0-9/+]\{64,8000}=\{,2}\(\s\|$\)" contains=sshKeyComment
syn match sshKeyComment "\s\<.*$" contained

syn match sshKeyComment "\v#.*$"

hi def link sshKeyType Type
hi def link sshKeyBase64Encoded String
hi def link sshKeyComment Comment
