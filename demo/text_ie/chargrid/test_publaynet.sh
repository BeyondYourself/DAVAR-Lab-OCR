#!/bin/bash
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:zh:en_US:en
export PATH=/usr/local/miniconda3/bin/:$PATH

export CUDA_VISIBLE_DEVICES=0

DAVAROCR_PATH=/path/to/Davar-Lab-OCR/
python $DAVAROCR_PATH/tools/test.py ./configs/publaynet_chargrid.py /path/to/checkpoint_file --eval bbox
