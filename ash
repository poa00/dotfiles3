#!/bin/sh
set -eu
IFS="$(printf '%b_' '\n\t ')"
IFS="${IFS%_}"

dash "$@"
