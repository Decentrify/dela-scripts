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

WGET="wget http://snurran.sics.se/hops/dela/$DELA -O dela.jar"
IN_VAGRANT="sudo su; service dela stop; cd /srv/dela/lib; rm -rf ./*; $WGET; service dela start"
echo "ssh ${USER}@${VAGRANT_SERVER} "${IN_VAGRANT}"
ssh ${USER}@${VAGRANT_SERVER} "${IN_VAGRANT}"

