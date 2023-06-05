FROM golang:1.20 as builder
WORKDIR /go/src/github.com/asher-t-parker/assignment-test-atp

COPY . .
WORKDIR /go/src/github.com/asher-t-parker/assignment-test-atp/cmd
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o ../bin/simple-dump-server . && \
    go test ./... -cover

FROM alpine:3.6
RUN mkdir /opt
RUN apk add --no-cache ca-certificates
WORKDIR /opt/
COPY --from=builder /go/src/github.com/asher-t-parker/assignment-test-atp/bin/simple-dump-server .
ENTRYPOINT ["./simple-dump-server"]
