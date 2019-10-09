FROM alpine:latest

COPY ./api /go/src/api

CMD ["/go/src/api/server"]
