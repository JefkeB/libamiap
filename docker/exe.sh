#!/bin/bash
echo "$@"
docker exec -it buildroot bash -c "$@"
