#!/bin/bash
# Requires root or sudo
# Requires the classroom.zip blob from:
# https://download.blender.org/demo/test/pabellon_barcelona_v1.scene_.zip

EXAMPLE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

apt-get install -y unzip

cd /tmp

find ${EXAMPLE_PATH}/ -name "*.sh" -exec chmod a+x {} \;

mkdir -p /data/pabellon_barcelona_v1
cd /data/pabellon_barcelona_v1

jetpack download --project=blender examples/pabellon_barcelona_v1.scene_.zip /data/pabellon_barcelona_v1
unzip /data/pabellon_barcelona_v1/pabellon_barcelona_v1.scene_.zip
cp ${EXAMPLE_PATH}/* /data/pabellon_barcelona_v1/
mkdir -p /data/pabellon_barcelona_v1/images

chown -R cluster.user:cluster.user /data/pabellon_barcelona_v1



