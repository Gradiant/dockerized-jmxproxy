#!/bin/bash

VERSION=3.4.0
docker build -t jmxproxy:$VERSION --build-arg VERSION=$VERSION .
