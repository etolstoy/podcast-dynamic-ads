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

download_name=origin-$1.mp3
./download_file.sh $1 $download_name

##### Integrating adv
./integrate.sh $download_name $2 $3

##### Getting current play count


##### Uploading track with ad


##### Polling statistics


##### Uploading original track

