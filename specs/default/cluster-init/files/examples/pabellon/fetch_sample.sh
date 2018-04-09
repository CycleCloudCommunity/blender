#!/bin/bash
# Requires root or sudo
# Requires the classroom.zip blob from:
# https://download.blender.org/demo/test/pabellon_barcelona_v1.scene_.zip


apt-get install -y unzip

cd /tmp

find ${CYCLECLOUD_SPEC_PATH}/files/examples/ -name "*.sh" -exec chmod a+x {} \;

mkdir -p /data/pabellon_barcelona_v1
cd /data/pabellon_barcelona_v1

jetpack download examples/pabellon_barcelona_v1.scene_.zip /data/pabellon_barcelona_v1
unzip /data/pabellon_barcelona_v1/pabellon_barcelona_v1.scene_.zip
cp ${CYCLECLOUD_SPEC_PATH}/files/examples/pabellon_barcelona_v1/* /data/pabellon_barcelona_v1/
mkdir -p /data/pabellon_barcelona_v1/images

chown -R cluster.user:cluster.user /data/pabellon_barcelona_v1



