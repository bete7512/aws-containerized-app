FROM golang:1.24-alpine AS build


WORKDIR /app

COPY go.mod  ./

RUN go mod download

COPY . .


RUN CGO_ENABLED=0 GOOS=linux go build -o main .

FROM alpine:latest

WORKDIR /app

COPY --from=build /app/main .


RUN apk add --no-cache ca-certificates tzdata

CMD ["/app/main"]