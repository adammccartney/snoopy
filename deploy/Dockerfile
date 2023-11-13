FROM alpine:3.14
RUN apk add --no-cache libc6-compat
COPY ./app/k8sclient /k8sclient
ENTRYPOINT /k8sclient
