FROM golang:1.15.5 as builder

WORKDIR /app
COPY . .

RUN GOOS=linux go build -o /app/sample ./cmd/sample/main.go

FROM ubuntu:18.04
WORKDIR /
COPY --from=builder /app/sample /

EXPOSE 8090

CMD ["./sample"]

