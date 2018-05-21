#!/bin/bash

for DIR_NAME in $(find /d/lolic/Documents/Thesis/Repositories/DETRAC/Insight-MVT_Annotation_Test -type d | sort | awk '$0 !~ last "/" {print last} {last=$0} END {print last}')
do
	# mkdir -p /d/lolic/Documents/Thesis/hardware-accelerated-hog-svm/datasets/Test/DETRAC/$(basename $DIR_NAME)/Negatives
	echo -e "/d/lolic/Documents/Thesis/hardware-accelerated-hog-svm/opencv_benchmark/x64/Release/Sample_Negative.exe --dh=64 --dw=64 --dir=$DIR_NAME --res=/d/lolic/Documents/Thesis/hardware-accelerated-hog-svm/datasets/Test/DETRAC/$(basename $DIR_NAME)/Negatives"
	echo $(/d/lolic/Documents/Thesis/hardware-accelerated-hog-svm/opencv_benchmark/x64/Release/Sample_Negative.exe --dh=64 --dw=64 --dir=$DIR_NAME --res=/d/lolic/Documents/Thesis/hardware-accelerated-hog-svm/datasets/Test/DETRAC/$(basename $DIR_NAME)/Negatives)
	
	# ls "/d/lolic/Documents/Thesis/hardware-accelerated-hog-svm/datasets/Test/DETRAC/$(basename $DIR_NAME)/Negatives"
done