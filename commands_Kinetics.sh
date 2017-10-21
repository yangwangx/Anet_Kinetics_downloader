mkdir -p ../../../videos/train/
bash fetch_Kinetics_videos.sh ../../../videos/train/ ../kinetics_train/kinetics_train.json commands_train.txt
mkdir -p ../../../videos/val/
bash fetch_Kinetics_videos.sh ../../../videos/val/ ../kinetics_val/kinetics_val.json commands_val.txt
mkdir -p ../../../videos/test/
bash fetch_Kinetics_videos.sh ../../../videos/test/ ../kinetics_test/kinetics_test.json commands_test.txt
