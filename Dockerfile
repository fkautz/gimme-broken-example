FROM ubuntu

RUN apt update
RUN apt install wget -y
RUN apt install curl -y

WORKDIR /root

RUN wget https://storage.googleapis.com/golang/go1.6.2.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.6.2.linux-amd64.tar.gz
ENV GOROOT=/usr/local/go
ENV GOPATH=/root/work

RUN mkdir /root/bin
RUN curl -sL -o ~/bin/gimme https://raw.githubusercontent.com/travis-ci/gimme/master/gimme
RUN chmod +x ~/bin/gimme

ADD reproduce.sh reproduce.sh
