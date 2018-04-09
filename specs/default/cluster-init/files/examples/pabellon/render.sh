#!/bin/bash
#
#$ -V
#$ -cwd
#$ -o /data/logs -e /data/logs
#$ -N render_pabellon_barcelona_v1
#$ -t 1:10

mkdir -p /data/pabellon_barcelona_v1/images

cd /data/pabellon_barcelona_v1/3d
blender -b pavillon_barcelone_v1.2.blend -o /data/pabellon_barcelona_v1/images/frame_0${SGE_TASK_ID} -f ${SGE_TASK_ID}

