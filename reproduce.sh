# add gimme
PATH=$PATH:$HOME/bin

OLDPATH=$PATH


echo $PATH

mkdir $HOME/work

echo "--- from /usr/local/go"
GOROOT=/usr/local/go
GOPATH=$HOME/work
PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
echo "GOROOT: $GOROOT"
echo "PATH: $PATH"
go version

echo "--- from gimme, /usr/local/go present"
PATH=$OLDPATH
eval "$(gimme 1.6.2)"
echo "GOROOT: $GOROOT"
echo "PATH: $PATH"
go version

echo "--- from gimme, /usr/local/go removed"
PATH=$OLDPATH
rm /usr/local/go -rf
eval "$(gimme 1.6.2)"
echo "GOROOT: $GOROOT"
echo "PATH: $PATH"
go version || true

echo "---"

echo "--- from gimme, /usr/local/go removed, ~/.gimme removed"
PATH=$OLDPATH
rm -rf ~/.gimme
eval "$(gimme 1.6.2)"
echo "GOROOT: $GOROOT"
echo "PATH: $PATH"
go version
