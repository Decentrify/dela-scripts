#!/bin/bash
set -e

if [ $# -ne 2 ]; then
    echo "expected 2 parameter: user vagrant_home_dir"
    exit 1
fi

VM_SERVER_USER=$1
VM_SERVER=bbc1.sics.se
VM_HOME_DIR=$2
BINARIES_SERVER=snurran.sics.se
DELA=dela-0.0.1-SNAPSHOT.jar


OUT_VAGRANT="cd ${VM_HOME_DIR}; vagrant ssh ${IN_VAGRANT}"
echo "ssh ${VM_SERVER_USER}@${VM_SERVER} ${OUT_VAGRANT}"
ssh ${VM_SERVER_USER}@${VM_SERVER} ${OUT_VAGRANT}