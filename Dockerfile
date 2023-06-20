FROM golang:latest as builder

WORKDIR /usr/app

COPY . .

RUN go build main.go

FROM scratch

COPY --from=builder /usr/app .

CMD ["./main"]