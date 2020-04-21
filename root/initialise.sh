#!/bin/bash
set -eu

for init_script in $(find /etc/baked-initialise.sh.d /etc/initialise.sh.d -type f | sort); do
    echo "Executing init script: ${init_script}"
    "${init_script}"
    echo "Finished execution of init script: ${init_script}"
done
