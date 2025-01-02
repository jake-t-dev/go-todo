FROM golang:1.23

ENV ROOT=/go/src/app
WORKDIR ${ROOT}

ENV GO111MODULE=on

COPY . .
EXPOSE 3001

RUN go install github.com/air-verse/air@latest

CMD ["air"]
