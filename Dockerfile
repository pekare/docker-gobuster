FROM golang:latest

RUN go get -v github.com/OJ/gobusterwget && \
    mkdir /wordlists && \
    wget https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O /wordlists/directory-list-2.3-medium.txt && \
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/big.txt -O /wordlists/big.txt

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]