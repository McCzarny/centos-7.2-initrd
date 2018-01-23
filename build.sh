#!/bin/bash

if [ -z "$1" ]; then
    echo "Script requires 1 parameter - absolute path to unpacked RHEL-7.2 DVD"
    exit 1
fi

docker build -v $1:/distribution -t centos-7.2-initrd .
