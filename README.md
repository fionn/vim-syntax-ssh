# Vim Syntax for SSH Keys and Related Filetypes

Vim syntax files for SSH public keys, known hosts, authorized keys and allowed signers.

## Usage

1. Install this plugin.
2. Assign the filetypes to the appropriate files, e.g.
   ```lua
   vim.filetype.add({
       pattern = {
           ["${HOME}/.ssh/[%w_]+.pub"] = "sshkey",
           ["${HOME}/.ssh/authorized_keys"] = "sshauthorizedkeys",
           ["${HOME}/.ssh/known_hosts"] = "sshknownhosts",
           ["${HOME}/.ssh/allowed_signers"] = "sshallowedsigners"
       }
   })
   ```
   for Neovim.
