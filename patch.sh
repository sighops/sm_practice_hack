#!/bin/bash

VERSION=`grep -oP '(?<="version": ")([\.\d]+)' web/data/config.json`
GIT_SHA=`git rev-parse --short HEAD`
./flips-linux --apply build/smhack20.ips sm.smc build/rom/sm_smhack20.smc
mv build/rom/sm_smhack20.smc "build/rom/SM Practice Hack $VERSION $GIT_SHA.smc"
./flips-linux --apply build/smhack20_sd2snes.ips sm.smc build/rom/sm_smhack20_sd2snes.smc
mv build/rom/sm_smhack20_sd2snes.smc "build/rom/SM Practice Hack SD2SNES $VERSION $GIT_SHA.smc"