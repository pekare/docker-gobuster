FROM golang:latest

RUN go get -v github.com/OJ/gobuster && \
    wget https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O /go/directory-list-2.3-medium.txt && \
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/big.txt -O /go/big.txt

ENTRYPOINT ["gobuster"]
