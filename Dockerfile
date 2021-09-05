FROM alpine:3.11

RUN apk add --no-cache --virtual=build-deps wget \
  && wget https://storage.googleapis.com/kubernetes-release/release/v1.22.0/bin/linux/amd64/kubectl \
  && mv kubectl /usr/local/bin/kubectl.amd64 \
  && chmod +x /usr/local/bin/kubectl.amd64 \
  && wget https://storage.googleapis.com/kubernetes-release/release/v1.22.0/bin/linux/arm/kubectl \
  && mv kubectl /usr/local/bin/kubectl.arm \
  && chmod +x /usr/local/bin/kubectl.arm \
  && apk del build-deps

COPY kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

ENTRYPOINT ["/usr/local/bin/kubectl"]
