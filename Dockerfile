FROM golang:alpine
RUN mkdir /app \
    && adduser -S -D -H -h /app gouser
COPY ./main.go /app
WORKDIR /app
USER gouser
RUN chown gouser:gouser /app && go build -o main .
CMD ["main"]
