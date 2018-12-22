#!/bin/bash

# track_id
echo "SoundCloud track ID: $1"

# ad file name
echo "Adv filename: $2"

# ad timestamp
echo "Adv timestamp: $3s"

# ad paid count
echo "Adv paid count: $4"

##### Downloading and saving track

./download_file.sh 548832504 download.mp3

##### Integrating adv
#./integrate.sh

##### Getting current play count


##### Uploading track with ad


##### Polling statistics


##### Uploading original track

