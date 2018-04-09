#!/bin/bash

apt-get install -y unzip

cd /tmp

find ${CYCLECLOUD_SPEC_PATH}/files/examples/ -name "*.sh" -exec chmod a+x {} \;

cd /data

jetpack download examples/classroom.zip /data/
unzip /data/classroom.zip
cp ${CYCLECLOUD_SPEC_PATH}/files/examples/classroom/* /data/classroom/
mkdir -p /data/classroom/images

chown -R cluster.user:cluster.user /data/classroom



