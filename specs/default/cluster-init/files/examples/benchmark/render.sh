#!/bin/bash
#
#$ -V
#$ -cwd
#$ -o /data/logs -e /data/logs
#$ -N render_benchmark
#$ -t 1:10

mkdir -p /data/benchmark/images

blender -b benchmark.blend -o /data/benchmark/images/frame_0${SGE_TASK_ID} -f ${SGE_TASK_ID}

