#!/bin/bash

track_id=$1
token=$2

if [ -z $track_id ]
then
    echo 'pass track_id as first argument'
    exit;
fi

if [ -z $token ]
then
    echo 'pass token as second argument'
    exit;
fi

result=`curl --request GET --url "https://api.soundcloud.com/me/tracks/$track_id?oauth_token=$token" | jq {playback_count}`
playback_count=(`echo $result | tr '""' ' '`)

echo ${playback_count[3]}
