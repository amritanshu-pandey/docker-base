#!/bin/bash
set -eu

for init_script in $(find /etc/initialise.sh.d -type f | sort); do
    echo "Executing init script: ${init_script}"
    "${init_script}"
    echo "Finished execution of init script: ${init_script}"
done
