FROM envoyproxy/envoy:latest

COPY envoy-config.yaml /etc/envoy/envoy.yaml
