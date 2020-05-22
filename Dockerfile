FROM golang:latest

RUN go get -v github.com/OJ/gobusterwget && \
    https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O /go/directory-list-2.3-medium.txt

ENTRYPOINT ["gobuster"]