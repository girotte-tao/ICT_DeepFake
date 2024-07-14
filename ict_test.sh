#!/bin/bash

mkdir -p ./OUTPUT/log/

NAME=ict_base
TIME=EVAL-$(date +"%Y%m%d_%H%M%S")
CUDA_VISIBLE_DEVICES=0 python -u ict_eval.py \
    --net_mode ${NAME} \
    --dump_name ICT_BASE \
    2>&1 | tee ./OUTPUT/log/${NAME}_${TIME}.log