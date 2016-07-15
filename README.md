```sh
root@15c41183fb8b:~# ./reproduce.sh 
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/bin
--- from /usr/local/go
GOROOT: /usr/local/go
PATH: /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/bin:/usr/local/go/bin:/root/work/bin
go version go1.6.2 linux/amd64
--- from gimme, /usr/local/go present
go version go1.6.2 linux/amd64
GOROOT: 
PATH: /root/.gimme/versions/go1.6.2.linux.amd64/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/bin
go version go1.6.2 linux/amd64
--- from gimme, /usr/local/go removed
go: cannot find GOROOT directory: /usr/local/go
GOROOT: 
PATH: /root/.gimme/versions/go1.6.2.linux.amd64/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/bin
go: cannot find GOROOT directory: /usr/local/go
--- from gimme, /usr/local/go removed, ~/.gimme removed
go version go1.6.2 linux/amd64
GOROOT: /root/.gimme/versions/go1.6.2.linux.amd64
PATH: /root/.gimme/versions/go1.6.2.linux.amd64/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/bin
go version go1.6.2 linux/amd64
```
