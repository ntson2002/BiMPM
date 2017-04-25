#!/usr/bin/env bash

EMB=/work/sonnguyen/glove/glove.42B.300d.txt

FOLDER=/work/sonnguyen/snli/snli_1.0
TRAIN=$FOLDER/snli_1.0_train.txt
DEV=$FOLDER/snli_1.0_dev.txt
TEST=$FOLDER/snli_1.0_test.txt

python ./src/SentenceMatchTrainer.py --train_path $TRAIN --dev_path $DEV --test_path $TEST --word_vec_path $EMB --suffix sample --fix_word_vec --model_dir models/ --MP_dim 20