alpine-consul-protobuf
======================
An image for using [Protocol Buffers][protobuf] within Docker containers, bundled with Alpine Linux, [s6][s6] and [Consul][consul].
This image is based on [smebberson/alpine-consul-base][smebberson/alpine-consul-base].

Usage
-----
To use this image include `FROM matthewvalimaki/alpine-consul-protobuf` at the top of your `Dockerfile`, or simply `docker run --name consul-protobuf --link "alpine-server:consul-agent" matthewvalimaki/alpine-consul-protobuf`.

It's very import to include a link to a container running a Consul agent (regardless if that Consul agent is running in server mode or not). The link within the container must be `consul-agent` which is used within `/etc/services.d/consul/run` to provide an IP that the Consul agent should join. Without this, the container will error and quit.

[protobuf]: https://github.com/google/protobuf
[s6]: http://www.skarnet.org/software/s6/
[consul]: https://www.consul.io/
[smebberson/alpine-consul-base]: https://github.com/smebberson/docker-alpine/tree/master/alpine-consul-base