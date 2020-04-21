#!/bin/bash
set -eu

tempd="$(mktemp -d)"

cp /etc/baked-initialise.sh.d/* "${tempd}"
cp /etc/initialise.sh.d/* "${tempd}" || true

for init_script in $(find "${tempd}" -type f | sort); do
    echo "Executing init script: ${init_script}"
    "${init_script}"
    echo "Finished execution of init script: ${init_script}"
done
