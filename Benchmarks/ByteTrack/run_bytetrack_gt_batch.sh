for file in $ByteTrack_HOME/SN_tracking/$SN_TRACKING_MODE/*/ ; do 
file="${file%/}" # strip trailing slash
file="${file##*/}"
# echo "$file is the directoryname without slashes"
python tools/demo_track_snet.py image -f exps/example/mot/yolox_x_soccernet.py \
-c pretrained/bytetrack_x_mot20.tar --fp16 --fuse --save_result \
--path $ByteTrack_HOME/SN_tracking/$SN_TRACKING_MODE/$file/img1 \
--gtPath $ByteTrack_HOME/SN_tracking/$SN_TRACKING_MODE/$file/det/det.txt
done
