This is a docker image of [JMXProxy](https://mk23.github.io/jmxproxy/).

JMXProxy exposes all available MBean attributes on a given JVM via simple HTTP request. The results are in easily-parsable JSON format.

## Properties

- This image has a small footprint ( base docker image is openjdk:8u171-jre-alpine3.8).

## Configuration

Configuration is through environment variables:

- BIND_HOST. Default is 0.0.0.0.
- PORT. Default is 8000.

## Example of usage

Deploying jmxproxy container:

```
docker run -d -p 8000:8000 gradiant/jmxproxy
```

Using previous jmxproxy with a JMX agent in the jvm of host "example" and port "1123":

```
curl -s 'http://localhost:8080/jmxproxy/example:1123'
```

Note: jmxproxy container must be able to resolve and access "example" host.