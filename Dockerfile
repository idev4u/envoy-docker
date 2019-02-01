FROM envoyproxy/envoy:latest

COPY envoy-config.yaml /etc/envoy/envoy.yaml

RUN mkdir /envoy-go-endpoint
ADD envoy-go-endpoint/ /envoy-go-endpoint

RUN ls /envoy-go-endpoint

RUN apt-get update
RUN apt-get install -y golang-go curl

WORKDIR /envoy-go-endpoint
# CMD go run src/main/main.go

