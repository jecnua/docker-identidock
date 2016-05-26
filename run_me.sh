#!/bin/bash

docker run -d -v "$(pwd)"/app:/app -p 9090:9090 -p 9191:9191 --name me identidock
