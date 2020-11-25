# github-actions-test

## SSH Key Generation:
```
ssh-keygen -t ed25519 -a 100 -C "ssh://git@github.com/OWNER/REPONAME.git" -m PEM -N "" -f ~/.ssh/REPONAME -q
```
**Note that I am using a `/` after `git@github.com` instead of a `:`.** This is important for Terraform integration. Maybe others as well, not sure.
