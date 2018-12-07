#!/bin/bash
echo "beginning to train the network on all datasets... press ctrl+C to exit"

## optimized hyperparameters
num_epochs=100
lr=0.0025
pred_len=12

declare -a data_dirs=("eth" "zara1" "zara2" "univ" "hotel")

trap "exit" INT
for data_dir in "${data_dirs[@]}"
do
	echo "***running learning rate of $lr with $num_epochs epochs and $pred_len pred_len for $data_dir dataset***"
	python3 gru_prototype_v4_alldata.py \
	--num_epochs $num_epochs \
	--learning_rate $lr \
	--pred_len $pred_len \
	--dataset_name $data_dir
done

echo "all done!"