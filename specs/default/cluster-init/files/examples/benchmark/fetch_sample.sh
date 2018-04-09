#!/bin/bash
# Requires root or sudo
# Requires the classroom.zip blob from:
# https://download.blender.org/demo/test/benchmark.zip


apt-get install -y unzip

cd /tmp

find ${CYCLECLOUD_SPEC_PATH}/files/examples/ -name "*.sh" -exec chmod a+x {} \;

cd /data

jetpack download examples/benchmark.zip /data/
unzip /data/benchmark.zip
cp ${CYCLECLOUD_SPEC_PATH}/files/examples/benchmark/* /data/benchmark/
mkdir -p /data/benchmark/images

chown -R cluster.user:cluster.user /data/benchmark



