# hostm
do things on remote hosts with ssh, scp, sshfs

## host config files
Create host_config/$host_name/host.conf for each host in the repo folder. Content:

```
SSH_CONNECT_STRING="user@host_name_ip"
SSH_PORT=22
```
If SSH_PORT is ommited 22 is default.

## possibilities
```
hostm print [HOST]          prints host.conf
hostm ssh [HOST]
hostm scp [HOST] [SRC] [DEST]
hostm edit [HOST]
hostm help
hostm sshfs [HOST]          mount [HOST]:/ again ~/mountpoints/$host_name
hostm copy-id [HOST]        copy ssh public key to [HOST]
hostm copy-id-to-all        copy ssh public key to all hosts
hostm test-ssh-all
hostm bash [HOST] [CMD]     execute bash commands, see also https://www.shellhacks.com/ssh-execute-remote-command-script-linux/
hostm bash-all-hosts [CMD]  execute bash cmds on all hosts
```
