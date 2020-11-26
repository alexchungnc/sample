FROM golang:1.15.5 as builder

WORKDIR /app
COPY . .
RUN ls -la ./*
RUN GOOS=linux go build -o /app/sample ./cmd/sample/main.go

EXPOSE 8090

CMD ["./sample"]

