#!/bin/sh

echo "\n====== Embedded /wordlists ======"
ls -1 /wordlists
echo "=================================\n"

exec gobuster "$@"