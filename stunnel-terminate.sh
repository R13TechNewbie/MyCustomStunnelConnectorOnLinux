#!/bin/bash

port="$(sudo ss -nltp | grep 1337 | sed 's/.*=\([0-9]*\),.*/\1/')"
sudo kill $port
