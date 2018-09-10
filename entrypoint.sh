#!/bin/sh
envsubst '${BIND_HOST}${PORT}' < /jmxproxy/etc/jmxproxy.yaml.tpl > /jmxproxy/etc/jmxproxy.yaml
java -jar jmxproxy/jmxproxy.jar server /jmxproxy/etc/jmxproxy.yaml
