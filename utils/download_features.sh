#!/bin/bash
##BEST
fileid="1AB_ddG1yoQxSGHAeNMEQBp4A7TQFhTMm"
filename="BEST_i3d_features.tar.gz"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
mkdir -p data/BEST/features/
tar -C data/BEST/features/ -zxvf ${filename}
