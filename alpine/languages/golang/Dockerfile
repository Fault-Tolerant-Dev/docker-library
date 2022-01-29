ARG IMAGE
FROM $IMAGE

ARG GOLANG_VERSION
ENV GOLANG_VERSION ${GOLANG_VERSION}

RUN apk update && \
apk add --no-cache \
go=${GOLANG_VERSION}

RUN go version

ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

CMD ["go"]


