#!/bin/bash

./flips-linux --apply build/smhack20.ips sm.smc "build/rom/SM Practice Hack `date "+%Y-%m-%d"` `git rev-parse --short HEAD`.smc"
./flips-linux --apply build/smhack20_sd2snes.ips sm.smc "build/rom/SM Practice Hack SD2SNES `date "+%Y-%m-%d"` `git rev-parse --short HEAD`.smc"