#!/bin/bash

docker run -e "ENV=DEV" -p 5000:5000 --name me identidock
