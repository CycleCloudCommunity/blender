#!/bin/bash
# Requires root or sudo
# Requires the classroom.zip blob from:
# https://download.blender.org/demo/test/benchmark.zip

EXAMPLE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

apt-get install -y unzip

cd /tmp

find ${EXAMPLE_PATH}/ -name "*.sh" -exec chmod a+x {} \;

cd /data

jetpack download --project=blender examples/benchmark.zip /data/
unzip /data/benchmark.zip
cp ${EXAMPLE_PATH}/* /data/benchmark/
mkdir -p /data/benchmark/images

chown -R cluster.user:cluster.user /data/benchmark



