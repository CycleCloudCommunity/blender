#!/bin/bash

apt-get install -y unzip

cd /tmp

find ${CYCLECLOUD_SPEC_PATH}/files/examples/ -name "*.sh" -exec chmod a+x {} \;






