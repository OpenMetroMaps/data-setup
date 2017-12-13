#!/bin/bash

DIR=$(dirname $0)
source "$DIR/../paths.sh"
source "$DIR/paths.sh"

"$OMM_CLI" inspect-model \
    --input-format pbf --input "$FILTERED"
