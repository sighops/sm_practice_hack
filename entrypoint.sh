#!/bin/bash

if [ ! -f /app/tools/asar ]; then
    cd tools
    wget https://github.com/RPGHacker/asar/archive/v1.81.tar.gz \
     && tar xfz v1.81.tar.gz \
     && cd asar-1.81 \
     && cmake src \
     && make \
     && cp asar/asar-standalone /app/tools/asar
    cd /app
fi

./build_presets.sh
./build_dev.sh
./build_PAL.sh
./build.sh
./patch.sh