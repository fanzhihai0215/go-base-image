FROM fanzhihai/neokylin-base:1.11

ENV GOLANG_VERSION 1.12.7
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

ADD golang${GOLANG_VERSION}.linux-mips64.tar.gz /usr/local

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

WORKDIR $GOPATH
