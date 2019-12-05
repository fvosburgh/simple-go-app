FROM harbor.training.boxboat.io/library/base-image:latest as build
ENV GOCACHE=off
RUN mkdir /app \
    && addgroup -S gouser \
    && adduser -S -D -h /app gouser \
    && chown gouser:gouser /app
COPY ./main.go /app
WORKDIR /app
RUN go build -o main .

FROM alpine:latest
COPY --from=build /app/main .
RUN chmod +x main
EXPOSE 80
CMD ["./main"]
