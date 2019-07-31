FROM golang:alpine
RUN mkdir /app \
    && addgroup -S gouser \
    && adduser -S -D -H -h /app gouser
COPY ./main.go /app
WORKDIR /app
USER gouser
RUN chown gouser:gouser /app && go build -o main .
CMD ["main"]
