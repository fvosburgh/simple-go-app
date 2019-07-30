FROM golang:alpine
RUN mkdir /app \
    && adduser -S -D -H -h /app gouser
COPY ./main.go /app
WORKDIR /app
RUN go build -o main .
USER gouser
CMD ["main"]
