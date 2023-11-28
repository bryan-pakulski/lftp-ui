#!/bin/bash
if [ ! -d "build" ]; then
    echo "build directory not present, please build the project with cmake first"
    exit 1
fi

mkdir -p build/lftp-ui-bin

if [ -f build/lftp-ui ]; then
  mv build/lftp-ui build/lftp-ui-bin/
  cp data/config.yaml build/lftp-ui-bin/
fi

# Download latest release of lftp