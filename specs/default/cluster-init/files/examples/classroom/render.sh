#!/bin/bash
#
#$ -V
#$ -cwd
#$ -o /data/logs -e /data/logs
#$ -N render_classroom

mkdir -p /data/classroom/images

blender -b classroom.blend -o /data/classroom/images/frame_0${SGE_TASK_ID} -f ${SGE_TASK_ID}

