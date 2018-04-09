#!/bin/bash
# Requires root or sudo
# Requires the classroom.zip blob from:
# https://download.blender.org/demo/test/classroom.zip

EXAMPLE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

apt-get install -y unzip

cd /tmp

find ${EXAMPLE_PATH}/ -name "*.sh" -exec chmod a+x {} \;

cd /data

jetpack download --project=blender examples/classroom.zip /data/
unzip /data/classroom.zip
cp ${EXAMPLE_PATH}/* /data/classroom/
mkdir -p /data/classroom/images

chown -R cluster.user:cluster.user /data/classroom



