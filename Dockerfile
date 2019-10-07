FROM golang:latest

COPY ./api /go/src/api

WORKDIR /go/src/api

RUN go get -u github.com/gin-gonic/gin \
  && go get github.com/jinzhu/gorm \
  && go get github.com/go-sql-driver/mysql

CMD ["go", "run", "server.go"]
