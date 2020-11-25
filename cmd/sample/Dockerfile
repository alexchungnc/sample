FROM golang:1.15.5 as builder

WORKDIR /app
COPY . .
RUN GOOS=linux go build -o /app/sample ./main.go

EXPOSE 8748

CMD ["./sample"]

