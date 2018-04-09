#!/bin/bash
#

mkdir -p /data/classroom/images

cd /data/classroom

qsub -N render_classroom render.sh
qsub -hjid render_classroom convert.sh



