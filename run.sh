#!/bin/bash

sudo -E app/x86_64-native-linuxapp-gcc/pktgen -l 0-4 -n 3 -- -T -P -m "[1:3].0, [2:4].1"
