FROM golang:1.10

RUN mkdir -p $HOME/go/bin
ENV GOPATH=$HOME/go
ENV GOBIN=$GOPATH/bin
ENV PATH=$PATH:$GOBIN

RUN mkdir -p /go/src/github.com/cosmos
RUN cd $GOPATH/src/github.com/cosmos && git clone https://github.com/cosmos/cosmos-sdk
RUN cd $GOPATH/src/github.com/cosmos/cosmos-sdk \ 
    && git checkout master \
    && make get_tools \
    && make get_vendor_deps \
    && make install