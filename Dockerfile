FROM golang:latest
# testing build
RUN go get -v github.com/OJ/gobuster

RUN wget https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O /go/directory-list-2.3-medium.txt

ENTRYPOINT ["gobuster"]