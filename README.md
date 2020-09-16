# MyCustomStunnelConnectorOnLinux
A Certain Stunnel Connector On Linux

This repo won't include stunnel script

you can place your stunnel file in their default dir "/usr/local/etc/stunnel/"

set for routing manually, for now just read the scripts and try to understand it

"ujicoba" is a password, replace "ujicoba" with your own password

Package Needed : Stunnel, badvpn, tmux, sshpass

You Must Have Root Privileges to Execute This Scripts

HOW TO USE:

0. rename the route folder to "routing" (due to my laziness, i forgot to rename that)
1. connect to ssh with vanilla way first "ssh -D ..." 
2. after exchange key with typing "yes" if asked, then just ctrl+c the ssh
3. create your ip in route folder, just copy one of route-X file in route folder, change the ip to your ssh ip
3. edit script file in route folder, add your route file to that file, just follow the pattern
4. edit the stunnel-ssh file, insert your stunnel file path on stunnel-ssh
5. make sure you run stunnel on port 1337, or if you want to change the port, edit your stunnel-ssh file again and change ssh port on last line
6. modify all files permission to executable (chmod +x *)
7. run stunnel-ssh on one terminal, and run tun2socks on other terminal (./stunnel-ssh and ./tun2socks)

Troubleshoot:

Q: Ssh disconnected, how to reconnect?

A: ctrl+c stunnel-ssh, then run it again


Q: I want to change ssh server

A: ctrl+c stunnel-ssh and tun2socks, then run "sudo ifconfig tun0 down". edit your stunnel-ssh file, add your new stunnel file, reconnect to ssh using vanilla ssh "ssh -D ...", exchange key with typing yes, ctrl+c ssh connection, restart stunnel-ssh and tun2socks


Q: I want to...

A: Shut up and just read the scripts already. I am too lazy to answer :v
