#!/bin/bash
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:zh:en_US:en
export PATH=/usr/local/miniconda3/bin/:$PATH

DAVAROCR_PATH=/path/to/Davar-Lab-OCR/
python -m torch.distributed.launch --nproc_per_node 8 $DAVAROCR_PATH/tools/train.py  ./configs/mask_rcnn_pretrain_teacher.py --launcher pytorch
python -m torch.distributed.launch --nproc_per_node 8 $DAVAROCR_PATH/tools/train.py  ./configs/mask_rcnn_distill.py --launcher pytorch