#!/bin/bash

docker run -d -v "$(pwd)"/app:/app -P --name me identidock
