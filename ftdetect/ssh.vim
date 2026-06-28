au BufRead,BufNewFile */.ssh/?*.pub,/etc/ssh/?*.pub setfiletype sshpublickey
au BufRead,BufNewFile */.ssh/authorized_keys setfiletype sshauthorizedkeys
au BufRead,BufNewFile */.ssh/known_hosts,/etc/ssh/ssh_known_hosts setfiletype sshknownhosts
au BufRead,BufNewFile allowed_signers,*.allowed_signers setfiletype sshallowedsigners
