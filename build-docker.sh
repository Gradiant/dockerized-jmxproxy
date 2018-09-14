#!/bin/bash

VERSION=3.2.0
docker build -t jmxproxy:$VERSION --build-arg VERSION=$VERSION .
