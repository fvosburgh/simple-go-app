FROM golang:alpine
RUN mkdir /app \
    && addgroup -S gouser \
    && adduser -S -D -H -h /app gouser \
    && chown gouser:gouser /app
COPY ./main.go /app
WORKDIR /app
USER gouser
RUN go build -o main .
CMD ["main"]
