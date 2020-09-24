#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run \
    -p 1234:3000 \
    --name khoovi_sandbox_container \
    --rm \
    khoovi_sandbox_img \
    $@