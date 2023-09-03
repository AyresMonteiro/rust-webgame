FROM alpine:latest

RUN apk add curl gcc 

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup.sh

RUN sh rustup.sh -y

ENV PATH="${PATH}:/root/.cargo/bin"

CMD "/bin/sh"


