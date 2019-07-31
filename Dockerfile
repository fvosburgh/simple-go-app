FROM golang:alpine
ENV GOCACHE=off
RUN mkdir /app \
    && addgroup -S gouser \
    && adduser -S -D -h /app gouser \
    && chown gouser:gouser /app
COPY ./main.go /app
WORKDIR /app
RUN go build -o main .
USER gouser
CMD ["main"]
