# Anet_Kinetics_downloader, adapted from [Anet_tools2.0](https://github.com/waybarrios/Anet_tools2.0)

Requirements
------------
 1. youtube-dl to download videos (https://github.com/rg3/youtube-dl/)


Fetch DeepMind Kinetics
-----------------
To download all the Kinetics videos run script `commands_Kinetics.sh`. 
Don't forget to edit all the paths.

Note @ Oct 25, 2017:  10814 out of 246534 training videos (around 4.4%) are not accessible on Youtube.

Fetch ActivityNet
-----------------
To download all the ActivityNet videos run the following command line:
 $ chmod +x fetch_activitynet_videos.sh
 $ ./fetch_activitynet_videos.sh $VIDEO_PATH activity_net.v1-1.json

Where $VIDEO_PATH is the path where the videos will be located. If you already 
have a subset of the videos, input that directory.

Annotations
-----------
The file activity_net.v1-1.json contains the details about all the videos.
Additionally, it contains a key called "version" where you can obtain the 
release version.
Get the field "database" to obtain the video annotations. Example entry:

"p6HFyIZxy7Y": {
            "annotations": {
                "Archery": [
                    [
                        0.60576, 
                        0.70192
                    ], 
                    [
                        0.75961, 
                        0.83557
                    ]
                ]
            }, 
            "bitrate": 859, 
            "duration": 101.12200, 
            "fps": 30, 
            "resolution": "640x360", 
            "subset": "training", 
            "url": "https://www.youtube.com/watch?v=p6HFyIZxy7Y"
        }

Temporal annotations
--------------------
Make the following conversion to obtain the temporal 
annotations (based on the example entry):

activity: Archery
annotation #1:
  start_time = 0.60576 * 101.12200 = 61.25
  end_time = 0.70192 * 101.12200 = 70.97
Visualization: https://www.youtube.com/v/p6HFyIZxy7Y?start=61.25&end=70.97&autoplay=1

annotation #2:
  start_time = 0.75961 * 101.12200 = 76.81
  end_time = 0.83557 * 101.12200 = 84.49
Visualization: https://www.youtube.com/v/p6HFyIZxy7Y?start=76.81&end=84.49&autoplay=1
