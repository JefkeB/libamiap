#!/bin/sh
docker run -d -it --name buildroot --mount type=bind,source="$(pwd)"/target,target=/home/jef/target buildroot

