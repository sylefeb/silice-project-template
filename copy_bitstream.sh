#!/bin/bash

for dir in BUILD_*/; do
  if [[ -d "$dir" ]]; then
    if [[ -f "$dir/build.bin" ]]; then
      cp "$dir/build.bin" ./bitstream
      exit 0
    elif [[ -f "$dir/build.bit" ]]; then
      cp "$dir/build.bit" ./bitstream
      exit 0
    fi
  fi
done

exit -1
