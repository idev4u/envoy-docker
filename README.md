# Envoy Docker image

I would better understand how to use envoy and for this is this project. All the based on the [quick-start-guide](https://www.envoyproxy.io/docs/envoy/latest/start/start#quick-start-to-run-simple-example)

## how to use

```shell
git clone git@github.com:idev4u/envoy-docker.git
```

```shell
cd envoy-docker
```

```shell
docker build -t envoy:v1 .
```

```shell
docker run -d --name envoy -p 9901:9901 -p 10000:10000 envoy:v1
```

```
docker exec -it envoy /bin/sh
# go run src/main/main.go &
# Server is running ...
curl localhost:8080
hello world
{"info":"hello world"}
```

```shell
curl -v 127.0.0.1:10000/info
```
or 
```
curl $(hostname).local:10000/info
```